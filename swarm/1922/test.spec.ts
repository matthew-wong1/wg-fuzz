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
    
    const array0 = new Float32Array([-0.75, -0.25, -1.0, 1.0, -0.75, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -1.0, 0.0, -0.75, 1.0, 0.0, 0.0, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, -0.5, 0.75, 1.0, 0.5, 0.75, 0.75, -1.0, -0.5, -0.75, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, 0.75, 1.0, 0.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.5, 0.5, 1.0, -0.75, 0.25, 0.0, -1.0, -0.25, 0.5, 1.0, -0.25, 0.25, 0.5, -0.25, -0.25, 0.5, 0.75, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, 0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 0.75, 0.75, 1.0, 0.5, ]);
    const array1 = new Float32Array([-0.75, 1.0, -0.75, -1.0, -0.25, -0.5, -0.5, -1.0, 1.0, 0.25, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 0.75, 0.0, 0.5, -1.0, -0.75, 0.5, 1.0, -0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, -0.25, -1.0, 0.5, 0.25, 0.25, -0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.75, 1.0, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, 0.75, 1.0, -1.0, -0.75, -0.25, 0.25, -1.0, 0.5, -0.5, 0.0, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.0, ]);
    const array2 = new Float32Array([0.75, 1.0, 0.5, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, -0.5, -0.25, -0.25, -0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, -1.0, 0.5, 1.0, 0.75, 0.5, 0.0, 0.0, -0.75, 1.0, 0.75, 0.75, 0.0, -0.75, 1.0, -0.75, 1.0, 0.75, 1.0, -0.75, 0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -0.75, -0.75, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, -1.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.75, -0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.0, -0.25, 0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([0.0, 1.0, 0.0, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -0.75, 0.0, -0.5, -0.5, -0.75, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, 0.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.25, 1.0, 0.5, -0.5, -1.0, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.0, 0.25, 0.0, 0.75, 0.75, -0.5, -0.25, 0.25, -0.25, -0.25, 0.75, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.25, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, -0.25, -0.75, -0.75, -1.0, 0.0, -0.75, 1.0, -0.5, 0.25, -0.5, -0.75, 0.5, -0.25, -0.25, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
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
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    buffer002.destroy()
    
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    buffer002.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    buffer001.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    buffer004.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.popDebugGroup()
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    buffer003.destroy()
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
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
        occlusionQuerySet: undefined
    });
    
    command_encoder101.clearBuffer(buffer100);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array4 = new Float32Array([-0.25, -1.0, -0.75, 0.25, -1.0, 0.25, -0.5, -0.75, -0.25, 1.0, -0.5, 1.0, 0.5, 0.0, 0.0, 0.25, -0.25, 0.75, -1.0, 0.75, 0.5, 1.0, -0.5, 0.0, 1.0, 0.5, -0.5, -0.25, 1.0, 0.0, -0.25, 1.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.0, -0.75, 0.75, 0.75, 1.0, -0.75, -0.5, -0.5, 1.0, -0.25, 0.25, 0.75, 1.0, -0.25, 1.0, -0.75, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, 0.5, -0.75, -0.25, 0.0, 0.25, -1.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, -0.25, 0.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder201.popDebugGroup();
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    
    
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.setPipeline(render_pipeline003);
    const array5 = new Float32Array([1.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.25, 0.25, -1.0, 0.0, -1.0, -0.25, -0.5, 0.75, -0.25, 0.75, 1.0, 1.0, 0.75, 0.0, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, 0.75, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, 1.0, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 0.25, -1.0, 0.25, 0.75, 0.5, 0.75, 0.5, -0.75, 0.25, 1.0, -0.5, -0.25, -0.75, -0.75, 0.25, 1.0, -1.0, 0.25, -1.0, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query102.destroy()
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
        occlusionQuerySet: query000
    });
    render_bundle_encoder001.setPipeline(render_pipeline004);
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.setStencilReference(1);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0022.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    query200.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture002
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
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0020.setStencilReference(1);
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0022.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setPipeline(render_pipeline003);
    render_bundle_encoder000.setVertexBuffer(0, buffer004);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_pass_encoder0022.setPipeline(render_pipeline001);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1000.executeBundles([])
    query200.destroy()
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    command_encoder102.clearBuffer(buffer100);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0021.setStencilReference(1);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder002.setPipeline(render_pipeline003);
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setStencilReference(1);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
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
        occlusionQuerySet: query101
    });
    command_encoder103.clearBuffer(buffer100);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder0030.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder2011.insertDebugMarker("marker")
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer006.destroy()
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    compute_pass_encoder0011.popDebugGroup()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1021.executeBundles([])
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.destroy();
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    buffer005.destroy()
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.setStencilReference(1);
    
    render_bundle_encoder000.draw(3);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    buffer200.destroy()
    query200.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0022.popDebugGroup();
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

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    render_pass_encoder0030.setVertexBuffer(0, buffer003);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    query200.destroy()
    
    device40.destroy();
    buffer007.destroy()
    
    render_pass_encoder0022.popDebugGroup();
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_pass_encoder0022.setStencilReference(1);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    
    
    buffer204.destroy()
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0022.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    buffer009.destroy()
    compute_pass_encoder2000.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder0022.pushDebugGroup("group_marker");
    
    query001.destroy()
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group003);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    compute_pass_encoder2011.insertDebugMarker("marker")
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

    render_pass_encoder0022.setBindGroup(0, bind_group004);
    render_pass_encoder0022.insertDebugMarker("marker");
    render_pass_encoder0040.setPipeline(render_pipeline009);
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.draw(3);
    buffer0013.destroy()
    buffer201.destroy()
    
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer0012);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
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
        occlusionQuerySet: query000
    });
    
    compute_pass_encoder0011.popDebugGroup()
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_bundle_encoder002.drawIndirect(buffer009, 0);
    compute_pass_encoder3000.popDebugGroup()
    command_encoder300.popDebugGroup()
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    buffer0014.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    command_encoder005.pushDebugGroup("mygroupmarker")
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
        layout: render_pipeline003.getBindGroupLayout(0),
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
    
    const array6 = new Float32Array([1.0, 0.75, -0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.5, -0.75, 0.5, 0.25, 0.25, 0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.25, 0.25, 0.75, 0.5, -0.5, 0.0, -0.75, -1.0, -1.0, -0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, -0.75, -0.25, 0.75, 0.25, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.5, 1.0, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.75, -0.5, 1.0, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.0, 0.25, -0.25, 0.0, 0.75, 0.0, 0.25, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, 0.25, -0.25, -0.25, 0.5, ]);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    query001.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder202.setPipeline(render_pipeline207);
    
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
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    command_encoder005.clearBuffer(buffer009);
    render_pass_encoder0022.setVertexBuffer(0, buffer003);
    
    buffer008.destroy()
    render_pass_encoder0031.setPipeline(render_pipeline0010);
    
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0041.executeBundles([render_bundle_encoder001, ])
    
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0022.drawIndirect(buffer005, 0);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0021.setVertexBuffer(0, buffer003);
    render_pass_encoder0022.end();
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
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
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder0020.draw(3);
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
        layout: render_pipeline0010.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group007);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder2000.popDebugGroup()
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setVertexBuffer(0, buffer008);
    render_pass_encoder0021.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.setVertexBuffer(0, buffer006);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer003);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0020.end();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder2010.popDebugGroup()
    command_encoder002.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0022.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    command_encoder200.popDebugGroup()
    render_pass_encoder0022.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0022.drawIndirect(buffer008, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0022.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder0030.draw(3);
    const command_buffer200 = command_encoder200.finish();
}