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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    const array0 = new Float32Array([-1.0, 1.0, -0.5, -1.0, -0.25, -0.75, 0.0, -0.5, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 1.0, -0.75, -0.5, 1.0, 0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 0.25, 0.0, 1.0, -0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 0.75, -0.5, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, 1.0, 0.25, -1.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.25, -0.25, -1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.75, -0.5, 1.0, -0.75, 1.0, -0.5, -0.25, -0.5, ]);
    const array1 = new Float32Array([-0.25, 0.5, 1.0, -0.75, 0.5, -0.5, 0.25, 0.75, 1.0, -0.75, -0.25, 1.0, 0.5, 0.0, 0.75, -0.75, 0.5, -0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.0, -1.0, 0.0, 0.5, -0.25, -0.5, 1.0, -0.5, -0.25, -0.25, -0.5, -1.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -0.25, 1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.0, 0.25, 0.5, -1.0, -0.5, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.5, -1.0, 0.25, 1.0, 0.5, -1.0, -0.5, -1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -0.25, -0.25, 0.5, 0.0, 0.25, 0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array2 = new Float32Array([0.75, 0.25, 0.0, 1.0, -0.25, 0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, 0.25, -0.75, -0.25, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, -0.25, -0.25, -0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 1.0, 0.0, 0.25, -0.5, 0.0, -0.75, -0.75, 1.0, -0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.5, 0.25, -0.5, 0.25, 1.0, -0.75, 1.0, 1.0, 1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, -0.75, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, 0.75, 0.25, 0.0, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer001 = command_encoder001.finish();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture000.destroy();
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const array3 = new Float32Array([0.0, 0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, 1.0, -0.5, 1.0, 0.75, -0.75, 0.25, -0.5, 1.0, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, -1.0, 0.75, 0.75, -0.75, 1.0, 0.5, 0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.5, -0.25, 1.0, 0.0, 1.0, -0.25, -0.75, -0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.25, -0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array4 = new Float32Array([0.25, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 0.75, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.75, 0.0, -0.5, -0.75, -0.75, 0.0, 0.5, 0.25, -0.5, 0.5, 0.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, -0.75, 1.0, 0.0, 0.25, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.75, -0.75, 0.25, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, 0.75, 1.0, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.25, -0.25, -0.75, 0.5, -0.5, 1.0, 0.25, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, 1.0, 0.25, 0.5, -1.0, -0.5, -0.5, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.25, -0.75, 0.0, -0.75, 0.0, 0.75, -0.25, -0.5, -0.5, 0.75, -1.0, -1.0, -0.25, -0.5, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, 1.0, 0.0, -1.0, 0.25, -0.25, 0.75, -0.25, -1.0, 0.0, 1.0, -0.25, -0.5, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 1.0, -0.25, -1.0, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, 0.75, -0.25, 0.75, 0.25, -0.75, 0.25, -0.75, 0.25, -0.5, 0.5, -0.75, 0.25, -1.0, 1.0, -0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, ]);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    texture001.destroy();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setPipeline(render_pipeline003);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
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
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder0070.setPipeline(render_pipeline002);
    
    render_pass_encoder0080.setPipeline(render_pipeline002);
    const array6 = new Float32Array([-0.5, -0.5, 0.75, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.25, 0.75, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.75, 0.25, -0.75, -0.5, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, 0.25, 0.75, -0.5, -1.0, -0.25, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, -0.5, 0.25, -0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, 0.25, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -0.5, -0.75, 0.25, 0.5, -0.5, 0.25, -0.25, 0.25, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 0.75, -0.25, -0.75, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0060.setStencilReference(1);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder0080.setStencilReference(1);
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setStencilReference(1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.75, 0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.0, -1.0, -0.75, 0.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, 0.5, -0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 0.75, 0.5, 0.0, 1.0, -0.75, 0.5, 0.0, 0.5, -0.75, 0.0, -1.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.5, -1.0, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, 1.0, -0.75, 0.0, 0.5, -1.0, 0.75, 0.5, 0.75, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, -0.5, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.75, 0.5, -1.0, 0.5, -0.75, 0.5, 0.25, 0.5, ]);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
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
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer009 = command_encoder009.finish();
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_pass_encoder0060.setStencilReference(1);
    texture003.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0080.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_buffer0010 = command_encoder0010.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    
    render_pass_encoder0060.setStencilReference(1);
    
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    texture002.destroy();
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
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
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
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query002.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0040.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder00110.setPipeline(render_pipeline006);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture004 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture005.destroy();
    
    render_pass_encoder00120.executeBundles([])
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
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
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer0010, ]);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder00110.setStencilReference(1);
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder00130 = command_encoder0013.beginRenderPass({
        label: "render_pass_encoder00130",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder00110.beginOcclusionQuery(0)
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder00130.beginOcclusionQuery(0)
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder00130.executeBundles([])
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_pass_encoder00110.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder00120.setStencilReference(1);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    
    
    
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0040.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder00120.setPipeline(render_pipeline002);
    render_pass_encoder0060.beginOcclusionQuery(2)
    render_pass_encoder00120.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder00110.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder00130.setStencilReference(1);
    
    render_pass_encoder00130.setPipeline(render_pipeline007);
    
    
    
    
    render_pass_encoder00130.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder00110.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    render_pass_encoder00130.endOcclusionQuery()
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    query006.destroy()
    query005.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder00130.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    query004.destroy()
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
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
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder00110.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    compute_pass_encoder0040.insertDebugMarker("marker")
    device30.destroy();
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    render_pass_encoder0060.endOcclusionQuery()
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    
    
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout205]
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture202.destroy();
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array8 = new Float32Array([-1.0, 0.5, -1.0, -0.25, 0.75, 0.75, 0.75, -1.0, 0.0, 1.0, 0.0, 0.75, 0.75, 0.25, -0.75, -0.5, 0.25, 0.0, -0.5, 0.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.75, -0.25, -1.0, 0.75, 0.5, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.25, 0.75, -0.75, 1.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, 0.5, 0.25, -1.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.25, 0.25, 0.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, -1.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -0.5, -1.0, 0.25, ]);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
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
        occlusionQuerySet: query200
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    query004.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.beginOcclusionQuery(0)
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout205]
    });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    render_pass_encoder00120.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder00110.endOcclusionQuery()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder00120.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder00130.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture004 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder00110.beginOcclusionQuery(3)
    render_pass_encoder0060.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    render_pass_encoder00120.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    texture006.destroy();
    render_pass_encoder00110.setStencilReference(1);
    render_pass_encoder00130.beginOcclusionQuery(0)
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    query006.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout206]
    });
    
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer203 = command_encoder203.finish();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    render_pass_encoder00130.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder00130.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder00110.endOcclusionQuery()
}