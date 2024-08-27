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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array0 = new Float32Array([0.0, -0.5, -0.5, 0.25, 0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, 0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.5, 0.25, 0.25, 0.75, 0.5, 0.0, 1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 0.0, 0.75, -0.25, 0.5, 1.0, -1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.75, 0.25, 0.0, -0.5, -0.25, -0.75, -0.5, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, 0.5, 0.25, -1.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.0, 0.0, 0.0, -0.25, 0.25, -0.25, 0.75, 1.0, -1.0, -0.75, 0.75, 0.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array1 = new Float32Array([-1.0, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -1.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, 0.75, 1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 1.0, 0.25, -0.5, 0.75, 0.0, 0.5, -1.0, -1.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.0, 0.25, 0.75, -0.75, -1.0, -0.75, 0.5, -1.0, -1.0, ]);
    const array2 = new Float32Array([0.0, 1.0, -1.0, -0.25, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.0, -1.0, 1.0, 0.25, 0.25, -0.75, -0.75, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.5, 0.5, -0.5, -1.0, 1.0, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, 0.0, 0.5, -1.0, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, 0.75, 0.5, -0.5, -0.5, -0.5, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.0, 1.0, -0.5, 0.75, 0.75, -0.5, 0.25, -0.75, 1.0, 0.0, 0.75, 0.5, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, -0.75, -0.75, 0.75, -0.25, -0.75, 0.25, -0.25, -0.25, -1.0, 1.0, 0.5, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture000.destroy();
    const array3 = new Float32Array([0.25, 0.0, 0.25, 0.25, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, 1.0, 0.25, 0.25, -0.5, 1.0, -1.0, 0.25, -1.0, 1.0, 0.75, -0.5, 0.25, -0.25, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, -1.0, 0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, -0.25, -1.0, 0.5, -0.5, -0.75, -1.0, 1.0, 0.0, 0.0, 0.0, -1.0, -0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
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
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
        occlusionQuerySet: undefined
    });
    query000.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
        occlusionQuerySet: query000
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer001.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array4 = new Float32Array([-0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 0.75, -0.75, 1.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.5, 0.5, 1.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.25, -0.5, -0.25, 0.5, 0.0, 0.75, 0.5, -1.0, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, 0.0, 0.5, 0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -0.25, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 1.0, -1.0, 0.0, 0.5, 0.5, 0.0, -0.5, 1.0, 0.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, -1.0, ]);
    
    render_pass_encoder0030.endOcclusionQuery()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder002.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.25, -0.5, 0.5, 0.25, -0.5, 0.0, -1.0, -1.0, -1.0, 0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -0.25, -0.75, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 0.0, 1.0, 1.0, 0.5, 1.0, -0.5, -0.5, 0.25, 0.5, 1.0, 0.25, -0.25, -0.25, 1.0, -0.75, 0.0, 0.5, -0.5, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -0.75, -0.5, 1.0, -0.25, 0.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, -1.0, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.5, 0.0, -1.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, 0.5, -0.5, -0.5, -1.0, -0.5, 1.0, ]);
    query000.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.setStencilReference(1);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    texture001.destroy();
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: query000
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    const array6 = new Float32Array([-0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -0.75, 0.0, 0.25, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, 0.5, -1.0, -1.0, -0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.0, -1.0, -0.5, 0.25, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -0.25, 0.0, 0.75, 0.5, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, 0.0, -0.5, 0.25, 0.75, 0.75, -0.25, 0.75, -1.0, -0.5, 0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.5, 0.5, 0.25, -1.0, -0.25, 0.25, 0.0, 0.5, -0.5, -0.75, -0.75, -0.25, -0.5, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 0.75, -1.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.0, 0.5, 0.5, ]);
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
    const command_buffer003 = command_encoder003.finish();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture200.destroy();
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    render_bundle_encoder003.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder0021.executeBundles([])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder003.setPipeline(render_pipeline000);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
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
    
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder0040.setPipeline(render_pipeline001);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder2000.setStencilReference(1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0020.setPipeline(render_pipeline002);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    device00.queue.submit([command_buffer000, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query000.destroy()
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0022.executeBundles([])
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_bundle_encoder000.popDebugGroup();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([1.0, -0.5, -0.25, -0.75, -1.0, 0.75, -0.25, 1.0, -0.25, 0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 1.0, 0.0, 0.75, 0.25, 0.75, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, -0.75, 0.75, 0.5, 0.25, -0.75, -0.5, 0.0, 1.0, 0.0, -0.25, 0.5, -1.0, -1.0, 0.5, 0.0, -0.5, -0.25, -1.0, 0.75, 1.0, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, -0.75, -0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, 0.5, -1.0, -1.0, 1.0, -0.5, -0.5, 0.0, -0.25, 0.0, 0.75, -0.5, -0.5, 0.75, -0.75, -0.5, -0.25, 0.25, -0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.25, ]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.popDebugGroup()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
        occlusionQuerySet: query001
    });
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder201.popDebugGroup()
    
    command_encoder201.clearBuffer(buffer200);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    render_bundle_encoder003.popDebugGroup();
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
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder2000.setPipeline(render_pipeline201);
    render_pass_encoder0011.setPipeline(render_pipeline000);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder201.popDebugGroup();
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder004.setPipeline(render_pipeline002);
    render_pass_encoder2001.endOcclusionQuery()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0021.setPipeline(render_pipeline002);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group000);
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder004.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    render_bundle_encoder201.popDebugGroup();
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

    render_bundle_encoder003.setBindGroup(0, bind_group003);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.pushErrorScope("validation");
    render_pass_encoder0021.setStencilReference(1);
    device30.destroy();
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder005.copyBufferToBuffer(
        buffer009,
        0,
        buffer001,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_pass_encoder0011.insertDebugMarker("marker");
    
    render_pass_encoder0011.setStencilReference(1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0041.setPipeline(render_pipeline001);
    
    render_pass_encoder0022.pushDebugGroup("group_marker");
    render_pass_encoder0022.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    render_pass_encoder0041.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer0010.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    render_bundle_encoder004.pushDebugGroup("group_marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    render_pass_encoder0010.setStencilReference(1);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    buffer000.destroy()
    query400.destroy()
    const command_buffer400 = command_encoder400.finish();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    command_encoder006.insertDebugMarker("mymarker");
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0022.setStencilReference(1);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer005.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder0010.setStencilReference(1);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.setPipeline(compute_pipeline004);
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
    compute_pass_encoder2000.popDebugGroup()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder2001.setStencilReference(1);
    query200.destroy()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer0011.destroy()
    
    command_encoder006.copyBufferToBuffer(
        buffer002,
        0,
        buffer0013,
        0,
        400
    );
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0022.setPipeline(render_pipeline001);
    render_pass_encoder0011.setStencilReference(1);
    buffer009.destroy()
    
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder000.drawIndirect(buffer0010, 0);
    render_bundle_encoder400.insertDebugMarker("marker");
    texture003.destroy();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0011.insertDebugMarker("marker");
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query200.destroy()
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0050.setPipeline(render_pipeline003);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder0030.setPipeline(compute_pipeline004);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    render_pass_encoder0011.insertDebugMarker("marker");
    const command_buffer006 = command_encoder006.finish();
    buffer200.destroy()
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_pass_encoder0040.insertDebugMarker("marker");
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    query400.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder0020.popDebugGroup();
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query000.destroy()
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder2010.setStencilReference(1);
    const array8 = new Float32Array([0.0, 0.5, 0.5, 0.0, 0.75, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, -0.75, 0.0, -0.5, 0.0, -0.25, 0.0, -0.5, 1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -0.25, 1.0, 0.25, -1.0, -0.25, 0.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.5, 1.0, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.25, 0.5, 0.75, 0.0, 1.0, 0.25, -0.75, 0.5, 0.0, -1.0, -1.0, 0.25, 1.0, 0.75, 0.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.5, 0.5, 0.75, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, 0.25, 0.75, -1.0, 0.25, 0.25, -1.0, -0.75, 1.0, ]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0040.beginOcclusionQuery(0)
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeBuffer(buffer0016, 0, array3, 0, array3.length);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
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

    render_bundle_encoder001.setBindGroup(0, bind_group007);
    query001.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    render_bundle_encoder003.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
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
    
    
    render_pass_encoder0022.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder2021.executeBundles([])
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder0041.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setVertexBuffer(0, buffer009);
    render_pass_encoder2021.setPipeline(render_pipeline203);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer201.destroy()
    render_bundle_encoder002.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder004.insertDebugMarker("marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group008);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    buffer205.destroy()
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder004.copyBufferToBuffer(
        buffer0021,
        0,
        buffer007,
        0,
        400
    );
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0050.setVertexBuffer(0, buffer003);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.setVertexBuffer(0, buffer0017);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder2000.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    render_pass_encoder0020.end();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setPipeline(render_pipeline201);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group009);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0011.popDebugGroup();
    const command_buffer402 = command_encoder402.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group204);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder2020.setVertexBuffer(0, buffer2012);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group206);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder2010.setVertexBuffer(0, buffer2014);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0011);
    render_pass_encoder0041.setVertexBuffer(0, buffer0020);
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.setVertexBuffer(0, buffer203);
    render_pass_encoder0011.setVertexBuffer(0, buffer003);
    render_pass_encoder0041.drawIndirect(buffer0015, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
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

    render_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder0010.setVertexBuffer(0, buffer003);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.end();
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.popDebugGroup();
    command_encoder001.popDebugGroup()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer003, command_buffer006, command_buffer007, ]);
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    const command_buffer005 = command_encoder005.finish();
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0022.setBindGroup(0, bind_group0013);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0022.setVertexBuffer(0, buffer003);
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexed(3);
    const command_buffer004 = command_encoder004.finish();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0050.draw(3);
    render_pass_encoder2021.setVertexBuffer(0, buffer2011);
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
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    command_encoder401.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.end();
    render_pass_encoder0050.end();
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0022.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    device20.queue.submit([command_buffer201, ]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder0022.drawIndirect(buffer0016, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer204, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.end();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0030.end();
    render_pass_encoder0010.end();
    render_pass_encoder0022.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0022.popDebugGroup();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.draw(3);
    command_encoder002.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0022.end();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder2010.draw(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0050.drawIndirect(buffer005, 0);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0022.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0013, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder2000.end();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder2000.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0022.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0021, 0);
    device40.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0022.drawIndirect(buffer0012, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    device40.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    device00.queue.submit([command_buffer007, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0045, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2000.drawIndexed(3);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device00.queue.submit([]);
    render_pass_encoder0022.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0022.drawIndirect(buffer0044, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.draw(3);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2022, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2023, 0);
    render_pass_encoder2000.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0011.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0030.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2021.end();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0022.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0047, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0022);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
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
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0041.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0024);
    render_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder0030.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0035, "uint16");
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0022.drawIndirect(buffer0028, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer005, command_buffer006, ]);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0025);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2010.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0032, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0022.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndirect(buffer2025, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    device20.queue.submit([]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder2021.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0039, 0);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
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
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0026);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder2021.popDebugGroup();
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2010.endOcclusionQuery()
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    compute_pass_encoder2000.end();
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0028);
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndirect(buffer0076, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0011.drawIndirect(buffer0073, 0);
    render_pass_encoder0022.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0068, 0);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2038, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0022.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0014, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.end();
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0030);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0022.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2046, 0);
    render_pass_encoder0022.end();
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.end();
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer006, ]);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0022.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0077, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.popDebugGroup();
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
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0031);
    render_pass_encoder0050.end();
    render_pass_encoder0022.setIndexBuffer(buffer0010, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2010.drawIndirect(buffer2040, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2042, "uint16");
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0022.drawIndirect(buffer0080, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0022.drawIndexed(3);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0082, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0032);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0036, 0);
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0033);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndirect(buffer0077, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0022.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0022.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2001.end();
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0041.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0048, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2049, 0);
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0021.drawIndirect(buffer0077, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder0022.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndirect(buffer0048, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    device40.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0022.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2001.end();
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0022.drawIndirect(buffer0086, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.end();
    render_pass_encoder0041.end();
    device40.queue.submit([]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0064, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0061, "uint16");
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0022.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer0077, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder0022.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0030.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0034);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0077, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0022.drawIndirect(buffer0058, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0081, 0);
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0022.drawIndirect(buffer0091, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0022.drawIndirect(buffer0081, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0081, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0011.drawIndirect(buffer0090, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0030.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0094, 0);
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0022.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0081, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder0022.drawIndirect(buffer0094, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.drawIndirect(buffer0077, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder2021.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
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
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0035);
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndirect(buffer2037, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0062, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer2048, 0);
    render_pass_encoder0022.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
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
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0036);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder0011.drawIndirect(buffer0080, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2035, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2021.drawIndirect(buffer2050, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0022.end();
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
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0037);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2054,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0022.drawIndirect(buffer0071, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0022.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0093, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0094, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0094, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.end();
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0022.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00101, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer0077, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndirect(buffer0034, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0080, 0);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.drawIndirect(buffer0088, 0);
    render_pass_encoder2021.drawIndirect(buffer2053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndirect(buffer0080, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2030, 0);
    render_pass_encoder0050.drawIndirect(buffer00101, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndirect(buffer0089, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0011.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0098, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
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
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0038);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndirect(buffer2046, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0011.end();
    render_pass_encoder0022.drawIndirect(buffer00100, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer00104, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder0021.end();
    render_pass_encoder0022.drawIndirect(buffer0094, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00105, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
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
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndirect(buffer0094, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder0030.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.end();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0039);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0070, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
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
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0093, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00108, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00108, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
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
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0040);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer007, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00105, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2061, 0);
    render_pass_encoder0041.drawIndirect(buffer00109, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0081, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0041);
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer00108, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer00108, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0054, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
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
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0042);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0081, 0);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0094, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0022.drawIndirect(buffer0072, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0011.drawIndirect(buffer00108, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2021.drawIndirect(buffer2040, 0);
    render_pass_encoder0022.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.end();
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0022.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2062, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.draw(3);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2000.drawIndirect(buffer2061, 0);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0089, 0);
    render_pass_encoder0022.drawIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0010.drawIndirect(buffer0081, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer006, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
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
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0043);
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00117, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndirect(buffer0095, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2064, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00118, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0022.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0044);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
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
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0022.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0053, 0);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    render_pass_encoder2000.drawIndirect(buffer2062, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2053, "uint16");
    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00122,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0045);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00108, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder0021.drawIndirect(buffer00117, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0089, 0);
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0021.drawIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    device00.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0022.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0099, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0022.drawIndirect(buffer0096, 0);
    render_pass_encoder0022.drawIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer00115, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0050.drawIndirect(buffer00114, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0094, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0079, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00123, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.setIndexBuffer(buffer2043, "uint16");
    device00.queue.submit([command_buffer004, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00124, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2001.drawIndirect(buffer2032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.popDebugGroup();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0046);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.drawIndirect(buffer0088, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0011.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0041.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0022.drawIndirect(buffer00124, 0);
    compute_pass_encoder0020.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer2061, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0040.end();
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0022.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0089, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
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
    render_pass_encoder2010.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    device40.queue.submit([command_buffer402, ]);
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
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0047);
    render_pass_encoder0030.drawIndirect(buffer00127, 0);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00130, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndirect(buffer00118, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0069, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndirect(buffer0043, 0);
    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
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
                    buffer: buffer00131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00132,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0048);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0022.end();
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2010.drawIndirect(buffer2044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0022.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer0069, 0);
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
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder0050.drawIndirect(buffer0068, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00133, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00133, 0);
    render_pass_encoder0050.drawIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndirect(buffer0090, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndirect(buffer0045, 0);
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder0040.drawIndirect(buffer0086, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0050.drawIndirect(buffer00128, 0);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
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
                    buffer: buffer00134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00135,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0049);
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0088, "uint16");
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0050);
    render_pass_encoder0030.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00138, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00138, 0);
    render_pass_encoder0022.drawIndirect(buffer00137, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndirect(buffer00133, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndirect(buffer0090, 0);
    render_pass_encoder0050.drawIndirect(buffer00119, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0022.drawIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0030.drawIndirect(buffer00108, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer0077, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0072, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0045, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00104, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0088, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder0021.end();
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder2010.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndirect(buffer0094, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2027);
    render_pass_encoder0041.drawIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndirect(buffer00118, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0021.drawIndirect(buffer00120, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0097, "uint16");
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
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0051);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndirect(buffer2057, 0);
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00133, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder0041.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00141, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00141, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00143,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0052);
    render_pass_encoder0010.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00117, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0022.drawIndirect(buffer00138, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0064, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0021.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndirect(buffer0071, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00141, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0011.drawIndirect(buffer00138, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder2020.end();
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndirect(buffer2045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0094, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0030.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer0094, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndirect(buffer00108, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder0030.drawIndirect(buffer00114, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
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
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0053);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0011.end();
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer00108, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer006, ]);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00108, 0);
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndirect(buffer00123, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0072, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0010.drawIndirect(buffer0095, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndirect(buffer0082, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2001.drawIndirect(buffer2061, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer00123, 0);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00143, "uint16");
    compute_pass_encoder0020.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0022.drawIndirect(buffer0078, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0084, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2079, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2010.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00146, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00146, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0022.drawIndirect(buffer0092, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00117, 0);
    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00148,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0054);
    render_pass_encoder0011.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer00115, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder0040.drawIndirect(buffer00118, 0);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2081, 0);
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2076, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder2000.drawIndirect(buffer2080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0022.drawIndirect(buffer00141, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0022.drawIndirect(buffer00138, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer00127, 0);
    device40.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00141, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00108, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0021.drawIndirect(buffer00142, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00149, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00149, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0080, "uint16");
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    device30.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2082, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0056, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0022.drawIndexedIndirect(buffer00146, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndirect(buffer0077, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2010.drawIndirect(buffer2071, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2030, "uint16");
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder2000.end();
    render_pass_encoder0040.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0040.drawIndirect(buffer00118, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.drawIndirect(buffer0080, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00136, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder0021.drawIndirect(buffer0071, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0050.drawIndirect(buffer00102, 0);
    render_pass_encoder0021.drawIndirect(buffer00138, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00150, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00150, 0);
    render_pass_encoder0050.drawIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndirect(buffer0011, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00118, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0078, 0);
    render_pass_encoder2001.drawIndirect(buffer2078, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0053, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder2000.drawIndirect(buffer2061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.drawIndirect(buffer00118, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndirect(buffer00146, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer2058, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2057, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndirect(buffer00133, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0022.drawIndirect(buffer0077, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0011.drawIndirect(buffer00102, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00107, 0);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2029);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2081, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2010.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder2021.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0077, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2000.drawIndirect(buffer2062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0041.drawIndirect(buffer00141, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndirect(buffer00117, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder2010.drawIndirect(buffer2079, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer005, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0041.drawIndirect(buffer00115, 0);
    device00.queue.submit([command_buffer000, command_buffer005, command_buffer006, ]);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder2001.drawIndirect(buffer2079, 0);
    render_pass_encoder0050.drawIndirect(buffer00120, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0086, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00152, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00152, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndirect(buffer00133, 0);
    render_pass_encoder2021.drawIndirect(buffer2062, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00151, 0);
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2066, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer00151, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00118, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndirect(buffer0085, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer0080, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndirect(buffer0068, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2063, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2030);
    render_pass_encoder0022.drawIndexedIndirect(buffer0096, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00153, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00153, 0);
    render_pass_encoder2000.drawIndirect(buffer2082, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00124, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00142, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2065, "uint16");
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00155,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0055);
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00156, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00156, 0);
    render_pass_encoder0050.drawIndirect(buffer00139, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0089, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00127, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0021.drawIndirect(buffer00153, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0041.drawIndirect(buffer00152, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    device40.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2087, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2087, 0);
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00139, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0022.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2000.drawIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    render_pass_encoder0022.drawIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder0040.drawIndirect(buffer00146, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer00124, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00141, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0022.drawIndirect(buffer0095, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00152, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0011.drawIndirect(buffer00123, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00159,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0056);
    render_pass_encoder0030.drawIndirect(buffer00149, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00160, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00160, 0);
    render_pass_encoder2010.drawIndirect(buffer2029, 0);
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
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0057);
    render_pass_encoder0021.drawIndirect(buffer00146, 0);
    render_pass_encoder0030.drawIndirect(buffer00120, 0);
    render_pass_encoder0040.drawIndirect(buffer00127, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0010.drawIndirect(buffer00117, 0);
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder0011.drawIndirect(buffer00146, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0081, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0082, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndirect(buffer2081, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2056, "uint16");
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer00138, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0021.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0022.end();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0022.drawIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0050.drawIndirect(buffer0098, 0);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2001.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0040.drawIndirect(buffer00141, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0020.setIndexBuffer(buffer00126, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00152, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2079, 0);
    device20.queue.submit([]);
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0021.drawIndirect(buffer0089, 0);
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
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0058);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00146, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00165, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00165, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0022, "uint16");
    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00167,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0059);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0022.drawIndirect(buffer00118, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer2081, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0050.drawIndirect(buffer0094, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndirect(buffer00123, 0);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2064, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0050.drawIndirect(buffer0076, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer00103, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00168, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00168, 0);
    render_pass_encoder0041.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.drawIndirect(buffer00152, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0022.drawIndirect(buffer00165, 0);
    render_pass_encoder0050.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0022.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0030.drawIndirect(buffer00123, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndirect(buffer2068, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0011.drawIndirect(buffer00127, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer00133, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndirect(buffer00168, 0);
    render_pass_encoder2021.drawIndirect(buffer2082, 0);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0022.drawIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00170,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0060);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00164, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00138, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2034, 0);
    render_pass_encoder0030.drawIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0040.drawIndirect(buffer00120, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder2010.drawIndirect(buffer2044, 0);
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer00130, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndirect(buffer00118, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2088, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2088, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00114, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0080, 0);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2084, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00107, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00168, 0);
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0010.drawIndirect(buffer00154, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer0094, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0022.drawIndirect(buffer0044, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer00151, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2000.drawIndirect(buffer2079, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00172,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0061);
    render_pass_encoder0040.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndirect(buffer00127, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0010.drawIndirect(buffer00100, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0011.drawIndirect(buffer00157, 0);
    render_pass_encoder0022.drawIndirect(buffer0072, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer00163, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0020, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00173, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00173, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2000.drawIndirect(buffer2062, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0041.setIndexBuffer(buffer00161, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0050.drawIndirect(buffer00152, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00138, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder0011.drawIndirect(buffer00165, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0011.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder0040.drawIndirect(buffer00147, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00149, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndirect(buffer00133, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00153, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0010.drawIndirect(buffer00115, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0022.end();
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer00154, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00108, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00174, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00174, 0);
    render_pass_encoder2021.drawIndirect(buffer2061, 0);
    render_pass_encoder0011.drawIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndirect(buffer00113, 0);
    render_pass_encoder0022.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer00153, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0010.drawIndirect(buffer00123, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.drawIndirect(buffer00146, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2087, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0011.drawIndirect(buffer00128, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.end();
    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00176,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0062);
    render_pass_encoder0011.drawIndirect(buffer00117, 0);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0021.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00146, 0);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2091, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2080, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder0020.end();
    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00178,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0063);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0050.drawIndirect(buffer00101, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00165, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer00142, 0);
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.setIndexBuffer(buffer00173, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00105, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer00151, 0);
    render_pass_encoder2010.drawIndirect(buffer2075, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2021.drawIndirect(buffer2087, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2000.drawIndirect(buffer2049, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2000.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder0021.drawIndirect(buffer00141, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndirect(buffer0063, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndirect(buffer0068, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2081, 0);
    device00.queue.submit([command_buffer001, command_buffer006, command_buffer007, ]);
    render_pass_encoder0022.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndirect(buffer00138, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0022.drawIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer00122, 0);
    render_pass_encoder0022.drawIndirect(buffer0053, 0);
    render_pass_encoder0022.drawIndirect(buffer00130, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0050.drawIndirect(buffer00168, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0022.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0030.drawIndirect(buffer00138, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0022.drawIndirect(buffer0090, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder0030.drawIndirect(buffer00146, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2081, 0);
    render_pass_encoder0050.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer00160, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer00176, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    render_pass_encoder0022.drawIndirect(buffer00169, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2021.drawIndirect(buffer2080, 0);
    render_pass_encoder0030.drawIndirect(buffer0095, 0);
    render_pass_encoder0011.drawIndirect(buffer00118, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndirect(buffer00141, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder2020.draw(3);
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
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0064);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00156, 0);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2078, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2080, 0);
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder2001.drawIndirect(buffer2079, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00147, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0050.drawIndirect(buffer0070, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder0011.drawIndirect(buffer0086, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00133, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2091, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2021.drawIndirect(buffer2039, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer005, ]);
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    render_pass_encoder0022.drawIndirect(buffer00141, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2001.drawIndirect(buffer2088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2057, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    compute_pass_encoder0030.end();
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2033);
    render_pass_encoder2010.drawIndirect(buffer2079, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0021.drawIndirect(buffer00152, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder2000.popDebugGroup()
    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00182,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0065);
    render_pass_encoder2000.drawIndirect(buffer2068, 0);
    render_pass_encoder0021.drawIndirect(buffer00118, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder0021.drawIndirect(buffer00150, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00167, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00140, 0);
    render_pass_encoder0041.drawIndirect(buffer00149, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer00149, 0);
    render_pass_encoder2021.drawIndirect(buffer2088, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
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
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0066);
    render_pass_encoder0022.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0020.drawIndirect(buffer00165, 0);
    render_pass_encoder0011.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndirect(buffer00146, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0041.drawIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2062, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    render_pass_encoder0022.drawIndirect(buffer00153, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00173, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer00176, 0);
    render_pass_encoder2021.popDebugGroup();
    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00186,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0067);
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndirect(buffer00131, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2021.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00118, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0068);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0041.drawIndirect(buffer00117, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2021.drawIndirect(buffer2079, 0);
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2088, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndirect(buffer00178, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00150, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2000.drawIndirect(buffer2090, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndexed(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00189, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00189, 0);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer007, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00174, 0);
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0021.drawIndirect(buffer00152, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0022.drawIndirect(buffer00182, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00140, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00191,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0069);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndirect(buffer00130, 0);
    render_pass_encoder0022.drawIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndirect(buffer00189, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2082, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer00183, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00152, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder2021.drawIndirect(buffer2061, 0);
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    render_pass_encoder2001.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder0021.drawIndirect(buffer00123, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder2000.drawIndirect(buffer2091, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer00104, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00175, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2001.drawIndirect(buffer2063, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00193,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0070);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00105, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndirect(buffer00173, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2080, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0010.drawIndirect(buffer0098, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2087, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00194, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00194, 0);
    render_pass_encoder2021.end();
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2088, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00195, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00195, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00138, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder0041.drawIndirect(buffer0090, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2098, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2098, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00175, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0081, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer00126, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0022.end();
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndirect(buffer00107, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndirect(buffer00152, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0022.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2096, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00108, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00149, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndirect(buffer00143, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0022.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2086, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0080, 0);
    render_pass_encoder0041.drawIndirect(buffer00174, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20100,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2035);
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndirect(buffer00104, 0);
    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00197,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0071);
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20102,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2036);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndirect(buffer00189, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0022.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00113, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00141, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder0011.drawIndirect(buffer00138, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00153, 0);
    render_pass_encoder0040.drawIndirect(buffer0077, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer000, command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder2020.drawIndirect(buffer2079, 0);
    render_pass_encoder0041.drawIndirect(buffer00187, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder0050.drawIndirect(buffer00181, 0);
    render_pass_encoder2001.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00198, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00198, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer00185, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder0041.drawIndirect(buffer00146, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00191, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0085, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2000.drawIndirect(buffer2098, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00198, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer00146, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2090, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer00134, 0);
    render_pass_encoder0050.drawIndirect(buffer00105, 0);
    render_pass_encoder0050.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0041.drawIndirect(buffer00141, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer00173, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00117, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0022.drawIndirect(buffer00139, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00123, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0074, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
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
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00165, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0041.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2021.drawIndirect(buffer2097, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndirect(buffer0082, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndirect(buffer2088, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndirect(buffer00201, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0022.drawIndirect(buffer00168, 0);
    render_pass_encoder0021.drawIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    render_pass_encoder0010.end();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0073);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer00151, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2092, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2082, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0022.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndirect(buffer00118, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2021.drawIndirect(buffer2091, 0);
    render_pass_encoder2001.drawIndirect(buffer2088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder0020.drawIndirect(buffer00201, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.popDebugGroup();
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2037);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0020.drawIndirect(buffer00194, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer00124, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer00129, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2010.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder2000.drawIndirect(buffer2079, 0);
    render_pass_encoder0040.drawIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00195, 0);
    compute_pass_encoder0030.popDebugGroup()
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0074);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00123, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2086, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00173, 0);
    render_pass_encoder0041.drawIndirect(buffer0064, 0);
    render_pass_encoder0022.drawIndirect(buffer00194, 0);
    render_pass_encoder0011.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer00127, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder0022.drawIndirect(buffer00194, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0022.drawIndirect(buffer0012, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer006, command_buffer007, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2094, "uint16");
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2082, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00127, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00115, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2079, 0);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0022.drawIndirect(buffer00205, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder0010.drawIndirect(buffer00151, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndirect(buffer00201, 0);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2078, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2001.drawIndirect(buffer2067, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndirect(buffer00138, 0);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00206, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00206, 0);
    render_pass_encoder0022.drawIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20105, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20105, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2079, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0050.drawIndirect(buffer00141, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.drawIndirect(buffer00182, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0040.end();
    device40.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer00201, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2090, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0030.drawIndirect(buffer00141, 0);
    render_pass_encoder2020.drawIndirect(buffer20101, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndirect(buffer00137, 0);
    render_pass_encoder0030.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0022.drawIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0050.drawIndirect(buffer00173, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0022.drawIndirect(buffer00105, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndirect(buffer00201, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2000.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00182, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0065, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0094, 0);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer00127, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.drawIndirect(buffer00153, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00151, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2069, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00115, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2001.drawIndirect(buffer2057, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00134, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    render_pass_encoder2021.drawIndirect(buffer2091, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0011.drawIndirect(buffer0080, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer2091, 0);
    render_pass_encoder0050.drawIndirect(buffer00186, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder0011.drawIndirect(buffer00141, 0);
    render_pass_encoder0022.drawIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndirect(buffer00142, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0040.drawIndirect(buffer00146, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder2010.drawIndirect(buffer2098, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0050.drawIndirect(buffer00195, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00126, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2072, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer00206, 0);
    render_pass_encoder0022.drawIndirect(buffer00198, 0);
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2090, "uint16");
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0098, 0);
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0050.drawIndirect(buffer00130, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0040.drawIndirect(buffer00149, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2064, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0021.drawIndirect(buffer00198, 0);
    render_pass_encoder2020.drawIndirect(buffer2088, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00109, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2098, 0);
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0021.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0020.drawIndirect(buffer00194, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0022.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00153, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder0022.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2098, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20106, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20106, 0);
    render_pass_encoder0021.drawIndirect(buffer00189, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0041.setIndexBuffer(buffer00178, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00206, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00207, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00207, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder0011.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndirect(buffer0064, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0087, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00194, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0041.drawIndirect(buffer00138, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer00104, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2088, 0);
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00206, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2089, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0090, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0073, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00154, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2077, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder2010.drawIndirect(buffer20105, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndirect(buffer00194, 0);
    render_pass_encoder0021.drawIndirect(buffer00165, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00146, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0020.drawIndirect(buffer00127, 0);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndirect(buffer00108, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer00123, 0);
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00107, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    render_pass_encoder0022.drawIndirect(buffer0080, 0);
    render_pass_encoder0022.drawIndirect(buffer00115, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2049, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20107, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20107, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0011.drawIndirect(buffer00161, 0);
    render_pass_encoder0022.drawIndirect(buffer0094, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00124, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0011.drawIndirect(buffer00165, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0050.drawIndirect(buffer00170, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0030.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00153, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00208, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00208, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00156, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndirect(buffer00152, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00209, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00209, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0022.drawIndirect(buffer00141, 0);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0022.drawIndirect(buffer0046, 0);
    render_pass_encoder0040.drawIndirect(buffer00156, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0021.drawIndirect(buffer00149, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20108, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20108, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00190, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00185, 0);
    render_pass_encoder0022.drawIndirect(buffer00149, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder0010.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndirect(buffer00152, 0);
    render_pass_encoder0022.drawIndirect(buffer00195, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndirect(buffer2087, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.drawIndirect(buffer2098, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00211,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0075);
    render_pass_encoder0050.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00206, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0031, "uint16");
    device00.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndirect(buffer00141, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00194, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2082, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndirect(buffer00151, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00176, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00149, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer00151, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndirect(buffer2046, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0022.drawIndirect(buffer0043, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2075, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00213,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0076);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer00160, 0);
    render_pass_encoder0011.drawIndirect(buffer00168, 0);
    render_pass_encoder2010.setIndexBuffer(buffer20108, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00108, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20107, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00167, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00172, 0);
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer00133, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0022.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer00165, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00206, 0);
    render_pass_encoder0020.drawIndirect(buffer00168, 0);
    render_pass_encoder0022.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer00207, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0020.drawIndirect(buffer00162, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0041.drawIndirect(buffer00198, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2041, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndirect(buffer2083, 0);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndirect(buffer00149, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2020.drawIndirect(buffer2098, 0);
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndirect(buffer00198, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0030.drawIndirect(buffer00155, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0011.drawIndirect(buffer0096, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    device00.queue.submit([command_buffer006, ]);
    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20110,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    render_pass_encoder0022.drawIndirect(buffer0065, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0011.drawIndirect(buffer00182, 0);
    render_pass_encoder0050.drawIndirect(buffer00150, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0022.drawIndexedIndirect(buffer0086, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer00105, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00150, 0);
    device40.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00208, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0041.drawIndirect(buffer00150, 0);
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    render_pass_encoder0021.drawIndirect(buffer00130, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00214, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00214, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0021.drawIndirect(buffer00198, 0);
    render_pass_encoder0022.drawIndirect(buffer00152, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndirect(buffer2062, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0011.end();
    render_pass_encoder0022.setIndexBuffer(buffer00183, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.endOcclusionQuery()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00215, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00215, 0);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder0011.drawIndirect(buffer00194, 0);
    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20112,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndirect(buffer0081, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndirect(buffer0079, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00153, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer00173, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2010.drawIndirect(buffer2059, 0);
    render_pass_encoder0010.drawIndirect(buffer0081, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0022.drawIndirect(buffer00153, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00182, 0);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    render_pass_encoder0021.drawIndirect(buffer00146, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder2021.drawIndirect(buffer2071, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00189, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00207, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndirect(buffer00183, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.drawIndirect(buffer00215, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder2020.drawIndirect(buffer2057, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00168, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer00179, 0);
    render_pass_encoder0022.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0066, "uint16");
    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00217,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0077);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20114,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2040);
    render_pass_encoder2000.end();
    render_pass_encoder0040.drawIndirect(buffer0086, 0);
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer2074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2056, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00150, 0);
    render_pass_encoder0021.drawIndirect(buffer00198, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndirect(buffer20107, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0050.drawIndirect(buffer00202, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2021.drawIndirect(buffer20106, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00118, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder2001.drawIndirect(buffer2079, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00213, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0099, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0011.drawIndirect(buffer00150, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    device00.queue.submit([command_buffer006, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20115, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00216, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2001.drawIndirect(buffer2082, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2056, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00215, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2021.drawIndirect(buffer2088, 0);
    render_pass_encoder0020.drawIndirect(buffer0080, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00128, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0089, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00198, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0011.drawIndirect(buffer00165, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00189, 0);
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
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0078);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.drawIndirect(buffer2081, 0);
    render_pass_encoder0021.drawIndirect(buffer00149, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndirect(buffer00153, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0061, 0);
    render_pass_encoder0022.drawIndirect(buffer00124, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0040.end();
    device40.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0022.drawIndirect(buffer00162, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2071, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder0050.drawIndirect(buffer00143, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder0050.drawIndirect(buffer00121, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20108, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2082, 0);
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
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0079);
    render_pass_encoder0040.drawIndexedIndirect(buffer00215, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00166, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0022.end();
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00222, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00222, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00220, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20114, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00130, 0);
    device20.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00141, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0022.drawIndirect(buffer00174, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.drawIndirect(buffer00195, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2021.drawIndirect(buffer2087, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2000.drawIndirect(buffer20108, 0);
    device00.queue.submit([command_buffer007, ]);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer00157, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndirect(buffer00206, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0050.drawIndirect(buffer00206, 0);
    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00224,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0080);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.drawIndirect(buffer20108, 0);
    render_pass_encoder0021.drawIndirect(buffer00208, 0);
    render_pass_encoder0040.drawIndirect(buffer00173, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0041.drawIndirect(buffer0096, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00226,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0081);
    render_pass_encoder2021.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder0020.drawIndirect(buffer00171, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2021.drawIndirect(buffer20106, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00215, 0);
    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20117,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    render_pass_encoder0021.drawIndirect(buffer00160, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2056, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder0021.drawIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0041.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0011.drawIndirect(buffer00206, 0);
    device40.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder2000.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0030.drawIndirect(buffer00215, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00212, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0011.drawIndirect(buffer00142, 0);
    render_pass_encoder2021.drawIndirect(buffer2069, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2069, "uint16");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0041.drawIndirect(buffer0081, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2087, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00161, "uint16");
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
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0082);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0022.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0040.drawIndirect(buffer0094, 0);
    render_pass_encoder0050.drawIndirect(buffer00108, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0089, 0);
    render_pass_encoder2001.drawIndirect(buffer2076, 0);
    render_pass_encoder0011.drawIndirect(buffer00146, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00228, 0);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0040.drawIndirect(buffer00151, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00103, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder0022.drawIndirect(buffer00189, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndirect(buffer2032, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00195, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2099, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder2000.drawIndirect(buffer2098, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder0040.drawIndirect(buffer00188, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndirect(buffer00147, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.drawIndirect(buffer00137, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00229, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00229, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0093, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00209, 0);
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0020.drawIndirect(buffer00146, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00215, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer00118, 0);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer00195, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0011.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0041.drawIndirect(buffer00152, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndirect(buffer00153, 0);
    render_pass_encoder0011.drawIndirect(buffer00189, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2021.drawIndirect(buffer2042, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00188, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2091, 0);
    render_pass_encoder0021.drawIndirect(buffer0093, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20107, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndirect(buffer00156, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.drawIndirect(buffer00104, 0);
    render_pass_encoder2010.drawIndirect(buffer2091, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00204, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndirect(buffer00223, 0);
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0050.drawIndirect(buffer00215, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0041.drawIndirect(buffer00105, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0010.drawIndirect(buffer00172, 0);
    render_pass_encoder0050.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder2021.drawIndirect(buffer20114, 0);
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder2000.drawIndirect(buffer20105, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00173, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00171, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2001.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndirect(buffer2088, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer00152, 0);
    render_pass_encoder2020.drawIndirect(buffer2082, 0);
    render_pass_encoder2000.drawIndirect(buffer2083, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0011.drawIndirect(buffer00117, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00111, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0022.drawIndirect(buffer00214, 0);
    render_pass_encoder0021.drawIndirect(buffer0079, 0);
    render_pass_encoder0021.drawIndirect(buffer00173, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndirect(buffer00201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00165, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    render_pass_encoder0010.drawIndirect(buffer00127, 0);
    render_pass_encoder2010.drawIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndirect(buffer2079, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00101, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00230, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00230, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0088, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0041.drawIndirect(buffer00189, 0);
    render_pass_encoder0021.drawIndirect(buffer00229, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndirect(buffer00133, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00231, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00231, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0094, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0050.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00138, 0);
    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00232,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00233,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0083);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2062, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00149, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer20115, 0);
    render_pass_encoder2020.drawIndirect(buffer2088, 0);
    render_pass_encoder2021.setIndexBuffer(buffer20117, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20119,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2042);
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0041.drawIndirect(buffer00231, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder2001.drawIndirect(buffer2064, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2082, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00173, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder0020.drawIndirect(buffer00182, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0070, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder0010.drawIndirect(buffer00138, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20121,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2043);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2020.drawIndirect(buffer2092, 0);
    render_pass_encoder0030.drawIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20122, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20122, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00103, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0041.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndirect(buffer00201, 0);
    render_pass_encoder0041.drawIndirect(buffer00168, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00234, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00234, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0041.drawIndirect(buffer0091, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00141, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0050, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0040.drawIndirect(buffer00144, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0021.drawIndirect(buffer00101, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0022.drawIndirect(buffer0015, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0021.drawIndirect(buffer00214, 0);
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2091, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndirect(buffer00124, 0);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20106, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20123, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20123, 0);
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0022.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndirect(buffer00153, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0097, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2020.drawIndirect(buffer2092, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0022.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20125,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2044);
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2000.drawIndirect(buffer20120, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndirect(buffer00209, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2077, 0);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00194, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer00231, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0050.drawIndirect(buffer00174, 0);
    render_pass_encoder0011.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0011.drawIndirect(buffer00108, 0);
    render_pass_encoder0040.drawIndirect(buffer00207, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0040.drawIndirect(buffer00209, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00133, 0);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0040.setIndexBuffer(buffer00226, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0094, 0);
    render_pass_encoder0050.drawIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndirect(buffer00198, 0);
    render_pass_encoder0040.drawIndirect(buffer00127, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0021.drawIndirect(buffer00154, 0);
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00139, "uint16");
    render_pass_encoder2010.drawIndirect(buffer20115, 0);
    render_pass_encoder0022.popDebugGroup();
    device20.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0011.drawIndirect(buffer00149, 0);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0011.drawIndirect(buffer00188, 0);
    render_pass_encoder0050.drawIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer00207, 0);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder0021.drawIndirect(buffer0097, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00165, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2074, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0022.setIndexBuffer(buffer00147, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2010.drawIndirect(buffer2032, 0);
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder2010.drawIndirect(buffer20103, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndirect(buffer20108, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0022.drawIndirect(buffer00198, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder0050.drawIndirect(buffer00149, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.setIndexBuffer(buffer00189, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2000.drawIndirect(buffer20108, 0);
    render_pass_encoder0021.drawIndirect(buffer00124, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00146, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2046, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2090, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00130, 0);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer00118, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0022.drawIndirect(buffer00177, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00183, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00235, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00235, 0);
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder2020.drawIndirect(buffer20115, 0);
    render_pass_encoder2020.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00231, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder0050.drawIndirect(buffer00222, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0092, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0050.drawIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0021.drawIndirect(buffer0093, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer00124, 0);
    render_pass_encoder0022.drawIndirect(buffer00133, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder2000.drawIndirect(buffer20126, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0021.drawIndirect(buffer00161, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer00149, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00178, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder2021.drawIndirect(buffer2091, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.drawIndirect(buffer00140, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2069, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0022.setIndexBuffer(buffer00121, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder0021.drawIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndirect(buffer2087, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00212, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00236, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00236, 0);
    render_pass_encoder0040.drawIndirect(buffer00140, 0);
    render_pass_encoder0022.drawIndirect(buffer0079, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndirect(buffer00141, 0);
    render_pass_encoder0050.drawIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndirect(buffer00112, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2021.drawIndirect(buffer2088, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0022.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0011.drawIndirect(buffer0035, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndirect(buffer00207, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00222, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2091, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0022.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0041.setIndexBuffer(buffer00197, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer00175, 0);
    render_pass_encoder2001.setIndexBuffer(buffer20109, "uint16");
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0010.drawIndirect(buffer00128, 0);
    render_pass_encoder0041.drawIndirect(buffer00209, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0040.drawIndirect(buffer00206, 0);
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0065, 0);
    device40.queue.submit([]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2021.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2020.drawIndirect(buffer20106, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0030.drawIndirect(buffer00229, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00113, 0);
    render_pass_encoder2010.drawIndirect(buffer20121, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0022.end();
    render_pass_encoder0050.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([]);
    render_pass_encoder0022.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0022.drawIndirect(buffer00229, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20102, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0030.drawIndirect(buffer00194, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2010.drawIndirect(buffer20123, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2010.setIndexBuffer(buffer20126, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2021.drawIndirect(buffer20122, 0);
    render_pass_encoder0030.drawIndirect(buffer00109, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer00214, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2088, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0021.drawIndirect(buffer00201, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00235, 0);
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
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0084);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00211, 0);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0092, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20104, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer00224, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0011.drawIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.drawIndirect(buffer2062, 0);
    render_pass_encoder0040.drawIndirect(buffer00141, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2021.setIndexBuffer(buffer20109, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00174, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00207, 0);
    render_pass_encoder0040.drawIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndirect(buffer00195, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.drawIndirect(buffer2056, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
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
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0085);
    render_pass_encoder0030.drawIndirect(buffer00236, 0);
    render_pass_encoder2021.drawIndirect(buffer2062, 0);
    render_pass_encoder0020.drawIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndirect(buffer00236, 0);
    render_pass_encoder2001.drawIndirect(buffer2069, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder2021.drawIndirect(buffer20126, 0);
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder2021.drawIndirect(buffer2079, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.end();
    render_pass_encoder2000.drawIndirect(buffer2052, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2087, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndirect(buffer00206, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0072, 0);
    render_pass_encoder2010.drawIndirect(buffer2082, 0);
    render_pass_encoder0022.drawIndirect(buffer0080, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00200, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0072, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0041.drawIndirect(buffer00100, 0);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0022.drawIndirect(buffer0041, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndirect(buffer20126, 0);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    render_pass_encoder0030.drawIndirect(buffer00117, 0);
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0021.drawIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
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
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0086);
    render_pass_encoder0011.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0021.drawIndirect(buffer00111, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer00124, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0040.drawIndirect(buffer00215, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20123, 0);
    render_pass_encoder0011.drawIndirect(buffer0072, 0);
    render_pass_encoder2000.drawIndirect(buffer20123, 0);
    render_pass_encoder0021.drawIndirect(buffer00192, 0);
    render_pass_encoder2020.end();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer20106, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2086, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0010.drawIndirect(buffer00225, 0);
    render_pass_encoder0041.drawIndirect(buffer00101, 0);
    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00243,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00244,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0087);
    render_pass_encoder0030.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder2021.drawIndirect(buffer20113, 0);
    render_pass_encoder0040.drawIndirect(buffer00117, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00236, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00146, 0);
    render_pass_encoder2020.drawIndirect(buffer2087, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder0020.drawIndirect(buffer00225, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer00188, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    device40.queue.submit([command_buffer401, ]);
    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00246,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0088);
    render_pass_encoder0041.drawIndirect(buffer00215, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00226, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00225, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0078, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20127, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20127, 0);
    render_pass_encoder0040.drawIndirect(buffer00111, 0);
    render_pass_encoder0021.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0030.drawIndirect(buffer00155, 0);
    render_pass_encoder0021.drawIndirect(buffer00127, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2021.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2061, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00248,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0089);
    render_pass_encoder2020.drawIndirect(buffer20126, 0);
    render_pass_encoder0011.drawIndirect(buffer00108, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00195, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20115, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00249, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00249, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00193, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00174, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00250, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00250, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndirect(buffer20116, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00108, 0);
    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20129,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2045);
    render_pass_encoder0021.end();
    render_pass_encoder2010.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00158, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0021.drawIndirect(buffer00236, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder0041.drawIndirect(buffer00149, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2096, 0);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndirect(buffer00208, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2093, "uint16");
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0050.drawIndirect(buffer00189, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder2000.drawIndirect(buffer2079, 0);
    render_pass_encoder2021.drawIndirect(buffer2058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20111, 0);
    render_pass_encoder2001.drawIndirect(buffer2098, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    render_pass_encoder2000.drawIndirect(buffer2076, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder0011.drawIndirect(buffer0086, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder0022.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00201, 0);
    render_pass_encoder2001.drawIndirect(buffer20127, 0);
    render_pass_encoder2020.drawIndirect(buffer2087, 0);
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer00153, 0);
    render_pass_encoder2021.drawIndirect(buffer2064, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer00231, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00108, "uint16");
    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20131,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2046);
    render_pass_encoder0040.drawIndexedIndirect(buffer00101, 0);
    device20.queue.submit([]);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2010.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
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
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0090);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.end();
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00209, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder0030.drawIndirect(buffer0081, 0);
    render_pass_encoder0011.drawIndirect(buffer00250, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0011.drawIndirect(buffer0037, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0021.drawIndirect(buffer00214, 0);
    render_pass_encoder0020.drawIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2010.drawIndirect(buffer2061, 0);
    render_pass_encoder2021.drawIndirect(buffer20122, 0);
    render_pass_encoder0010.drawIndirect(buffer00156, 0);
    render_pass_encoder0010.drawIndirect(buffer00104, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0021.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2080, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0041.drawIndirect(buffer00127, 0);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00174, 0);
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
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0091);
    render_pass_encoder0030.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00234, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00256,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0092);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, command_buffer006, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer00251, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndirect(buffer2094, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.drawIndirect(buffer2064, 0);
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.drawIndirect(buffer00249, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00213, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00184, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer20115, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.drawIndirect(buffer00123, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20132, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20132, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndirect(buffer00132, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndirect(buffer00229, 0);
    render_pass_encoder0021.drawIndirect(buffer00234, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndirect(buffer00215, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00155, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer20126, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00230, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0010.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0084, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20123, 0);
    render_pass_encoder2010.drawIndirect(buffer2081, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0011.drawIndirect(buffer0077, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0092, 0);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2084, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.end();
    render_pass_encoder0050.setIndexBuffer(buffer00256, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0011.drawIndirect(buffer00225, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer00206, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2001.drawIndirect(buffer20106, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00174, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2001.drawIndirect(buffer2082, 0);
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0054, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndirect(buffer00141, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.drawIndirect(buffer20105, 0);
    render_pass_encoder0010.drawIndirect(buffer00250, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20134,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2047);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer00160, 0);
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer00235, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder0021.drawIndirect(buffer00152, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0030.drawIndirect(buffer00133, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndirect(buffer00117, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder0041.drawIndirect(buffer00133, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0021.drawIndirect(buffer00173, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2059, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0011.drawIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00146, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer00151, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer20127, 0);
    render_pass_encoder0022.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0050.drawIndirect(buffer00209, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00173, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00231, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0022.drawIndirect(buffer00108, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2095, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2079, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndirect(buffer2087, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00216, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00250, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00201, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20123, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2001.setIndexBuffer(buffer20132, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2088, 0);
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    render_pass_encoder2000.drawIndirect(buffer20126, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2001.setIndexBuffer(buffer20127, "uint16");
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2001.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.drawIndirect(buffer00144, 0);
    render_pass_encoder0041.drawIndirect(buffer00179, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00257,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00258,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0093);
    render_pass_encoder0022.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer20126, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00192, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder0020.end();
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2057, "uint16");
    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00259,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00260,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0094);
    render_pass_encoder0040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00196, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer00214, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00218, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20104, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20107, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0022.drawIndirect(buffer00200, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.drawIndirect(buffer00123, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.drawIndirect(buffer0081, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder2001.setIndexBuffer(buffer20116, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2010.drawIndirect(buffer2082, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0021.drawIndirect(buffer00156, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0093, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer00207, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00205, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0058, "uint16");
    device00.queue.submit([command_buffer001, command_buffer006, command_buffer007, ]);
    render_pass_encoder0040.drawIndirect(buffer00255, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20126, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00201, 0);
    render_pass_encoder0050.drawIndirect(buffer00127, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0041.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00223, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00127, 0);
    render_pass_encoder0041.drawIndirect(buffer00230, 0);
    render_pass_encoder0011.drawIndirect(buffer00188, 0);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder0050.drawIndirect(buffer00230, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2076, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00165, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer20106, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0021.drawIndirect(buffer0094, 0);
    render_pass_encoder0022.drawIndirect(buffer0019, 0);
    render_pass_encoder0050.end();
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00258, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00151, 0);
    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00261,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00262,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0095);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00138, 0);
    render_pass_encoder0021.drawIndirect(buffer00211, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0022.end();
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer20104, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2021.end();
    render_pass_encoder2010.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00173, 0);
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndirect(buffer00260, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder0022.drawIndirect(buffer0088, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer00186, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2001.drawIndirect(buffer20126, 0);
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
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
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0096);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0050.drawIndirect(buffer00207, 0);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00243, "uint16");
    render_pass_encoder0022.drawIndirect(buffer00231, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2087, 0);
    render_pass_encoder0040.drawIndirect(buffer00233, 0);
    render_pass_encoder0010.drawIndirect(buffer00118, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2082, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer00141, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00265, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00265, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder2001.drawIndirect(buffer20132, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0022.drawIndirect(buffer00150, 0);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0021.setIndexBuffer(buffer00252, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder0011.drawIndirect(buffer00230, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer20113, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer00123, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00266, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00266, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.end();
    render_pass_encoder0022.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2001.drawIndirect(buffer2098, 0);
    render_pass_encoder2010.drawIndirect(buffer20125, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20106, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0030.drawIndirect(buffer00133, 0);
}