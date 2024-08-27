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
    
    
    const array0 = new Float32Array([0.25, 0.75, 0.0, 0.5, 1.0, 0.5, -0.5, -0.25, 0.25, 0.0, 0.25, -0.75, 0.25, 0.75, -1.0, 0.25, 0.75, -0.75, -0.75, 1.0, -0.75, -1.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.0, 0.5, 0.25, 1.0, -0.75, 0.75, -0.5, 0.25, 0.75, 1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -0.25, 0.5, 0.75, -0.25, 0.75, -0.25, 0.0, 1.0, -0.75, -0.25, 1.0, 0.25, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, -0.5, 0.25, -1.0, -0.25, -0.75, -0.5, 0.5, 1.0, -0.25, 0.5, 0.75, 0.5, 0.0, -0.75, -0.75, 0.25, -1.0, 0.75, 1.0, -0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, -1.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, -0.5, 0.75, ]);
    
    const array1 = new Float32Array([-1.0, -0.75, -0.5, 0.0, 0.75, -0.25, 0.25, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, 0.75, 1.0, 0.0, 0.0, -0.75, 0.75, -1.0, 1.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, 1.0, 0.25, -0.25, -0.75, 0.75, -0.25, 0.0, -0.75, -0.5, 0.0, 0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, -0.5, 1.0, 0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.75, -0.5, 0.5, 0.5, 0.25, 0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -1.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, 1.0, -1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.75, 0.5, 0.0, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("internal");
    command_encoder000.pushDebugGroup("mygroupmarker")
    device20.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    buffer001.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer000.destroy()
    query000.destroy()
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.pushErrorScope("internal");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder0000.popDebugGroup()
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture001.destroy();
    
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
    query000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array2 = new Float32Array([-0.75, -0.25, 0.25, -0.5, 0.75, 0.75, 0.5, -0.5, -0.25, 0.0, 1.0, 0.75, 0.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, 0.25, 0.75, -0.25, 0.25, -0.5, -0.75, 0.5, 1.0, 1.0, -1.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.5, -0.75, -0.25, -0.25, 1.0, 1.0, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, 0.0, -0.25, -0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 1.0, -0.25, 1.0, 0.75, -0.25, 1.0, 0.25, 0.25, -0.75, 0.75, 0.5, 1.0, 0.5, -0.75, 0.0, -0.5, 0.75, 0.0, -1.0, 0.5, 1.0, -0.75, -0.5, 0.25, -0.5, 0.75, -1.0, -0.75, -0.5, 0.75, 0.25, 0.5, 0.5, -0.75, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    command_encoder001.clearBuffer(buffer002);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder002.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder100.insertDebugMarker("mymarker");
    const array3 = new Float32Array([1.0, 0.25, 1.0, 0.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.5, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, 1.0, -0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.0, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, 0.25, -1.0, -0.5, 0.5, -0.5, 0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.75, 0.25, 0.5, 0.0, -0.5, 0.0, -0.25, -0.75, 0.0, -1.0, 0.0, 0.25, 0.5, 0.25, -0.5, -0.5, -0.5, -0.5, -0.25, -0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 1.0, -0.75, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, -1.0, 0.75, ]);
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
    compute_pass_encoder0000.popDebugGroup()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer002.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer003.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    command_encoder003.insertDebugMarker("mymarker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer101 = command_encoder101.finish();
    device30.destroy();
    device10.pushErrorScope("validation");
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
    buffer100.destroy()
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder003.setPipeline(render_pipeline000);
    query100.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0020.setPipeline(render_pipeline001);
    device10.queue.submit([command_buffer101, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query100.destroy()
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
        occlusionQuerySet: query001
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    texture100.destroy();
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_pass_encoder0011.setPipeline(render_pipeline003);
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    
    device00.pushErrorScope("validation");
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0030.setStencilReference(1);
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
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0000.setPipeline(render_pipeline003);
    
    
    render_pass_encoder0010.setPipeline(render_pipeline003);
    
    buffer005.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    render_pass_encoder0021.setPipeline(render_pipeline004);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.executeBundles([render_bundle_encoder002, ])
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    
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
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_bundle_encoder002.popDebugGroup();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
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
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    
    device40.destroy();
    texture002.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder004.insertDebugMarker("mymarker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    buffer006.destroy()
    texture000.destroy();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer001.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setStencilReference(1);
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer004.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0011.insertDebugMarker("marker");
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
    query003.destroy()
    
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder0041.setPipeline(render_pipeline006);
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    
    
    buffer0011.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.setPipeline(render_pipeline006);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0050.setPipeline(render_pipeline002);
    render_pass_encoder0021.setStencilReference(1);
    buffer0011.destroy()
    render_pass_encoder0000.popDebugGroup();
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer0010, 0);
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device00.pushErrorScope("internal");
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder000.popDebugGroup();
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

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    render_bundle_encoder003.insertDebugMarker("marker");
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
        occlusionQuerySet: query000
    });
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
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
    texture101.destroy();
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    render_pass_encoder0051.setPipeline(render_pipeline003);
    render_pass_encoder0000.insertDebugMarker("marker");
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder003.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query100.destroy()
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const array4 = new Float32Array([-0.5, -0.25, -0.25, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 0.0, -1.0, -1.0, 0.25, 0.5, 0.75, 0.25, 0.0, -0.75, -0.75, 0.75, -0.75, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, -0.75, -0.5, -0.25, -0.25, 0.0, -0.75, -1.0, -1.0, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.25, 0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.75, 0.5, 0.25, 0.25, -1.0, 0.25, -0.5, 0.5, 0.75, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 0.75, 0.0, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 0.75, ]);
    render_pass_encoder0001.setPipeline(render_pipeline005);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0020.end();
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer008.destroy()
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer0015.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0051.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group008);
    
    query101.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    render_pass_encoder0031.pushDebugGroup("group_marker");
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0051.setBindGroup(0, bind_group009);
    
    render_pass_encoder0000.insertDebugMarker("marker");
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

    render_pass_encoder0011.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer0021.destroy()
    query003.destroy()
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    buffer007.destroy()
    command_encoder003.copyBufferToBuffer(
        buffer0020,
        0,
        buffer0024,
        0,
        400
    );
    buffer0018.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer0016.destroy()
    {
        await buffer0011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0011.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    buffer0012.destroy()
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer005
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
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.popDebugGroup();
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer0017,
        0
    )
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder0051.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.setVertexBuffer(0, buffer0022);
    
    
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0041.setVertexBuffer(0, buffer0021);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    
    render_bundle_encoder001.setIndexBuffer(buffer0016, "uint16");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    buffer0019.destroy()
    render_pass_encoder0031.setStencilReference(1);
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0021,
        0
    )
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder001.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
    
    render_pass_encoder0040.setVertexBuffer(0, buffer0011);
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    render_pass_encoder0041.end();
    command_encoder004.copyBufferToBuffer(
        buffer0012,
        0,
        buffer0022,
        0,
        400
    );
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder0021.insertDebugMarker("marker");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
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

    render_bundle_encoder003.setBindGroup(0, bind_group0012);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0020,
        0
    )
    
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.drawIndexedIndirect(buffer0024, 0);
    buffer0016.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer0024);
    command_encoder000.copyBufferToBuffer(
        buffer0026,
        0,
        buffer0011,
        0,
        400
    );
    buffer0022.destroy()
    buffer0014.destroy()
    render_pass_encoder0011.setStencilReference(1);
    {
        await buffer0024.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0024.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0024.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.drawIndirect(buffer0024, 0);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder002.copyBufferToBuffer(
        buffer0018,
        0,
        buffer0015,
        0,
        400
    );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.draw(3);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    device00.queue.submit([command_buffer004, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0000.popDebugGroup();
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group0013);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
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
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    device10.queue.submit([]);
    render_pass_encoder0051.setVertexBuffer(0, buffer000);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer006);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.setVertexBuffer(0, buffer0024);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0000.draw(3);
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
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group0015);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer106, 0);
    command_encoder000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.setVertexBuffer(0, buffer0023);
    render_pass_encoder0000.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
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
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group0016);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0001.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0001.draw(3);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0050.setVertexBuffer(0, buffer0032);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0031.end();
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    compute_pass_encoder1020.end();
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0031.draw(3);
    command_encoder003.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder0031.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.draw(3);
    const command_buffer003 = command_encoder003.finish();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.end();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    const command_buffer002 = command_encoder002.finish();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    render_pass_encoder0010.popDebugGroup();
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.end();
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0024, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder0010.end();
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    device10.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.end();
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0036, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0043, "uint16");
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0051.drawIndirect(buffer002, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0051.drawIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0029, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0001.draw(3);
    compute_pass_encoder1020.end();
    render_pass_encoder0021.drawIndirect(buffer0029, 0);
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder0000.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0021.drawIndexed(3);
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
    render_pass_encoder0030.end();
    render_pass_encoder0030.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0032, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndexed(3);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0043, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0045, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexed(3);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.end();
    render_pass_encoder0021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.draw(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0033, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([]);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0050, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0046, "uint16");
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndirect(buffer0014, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer0055, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0041.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0010.end();
    compute_pass_encoder1020.end();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1033, 0);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0050.drawIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer004, "uint16");
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0021.drawIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0011.end();
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([]);
    render_pass_encoder0020.draw(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0066, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0001.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0031.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0067, "uint16");
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
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
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0068, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1043, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0050.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0041.popDebugGroup();
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0067, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder0000.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0013, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndirect(buffer0064, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
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
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer005, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0046, "uint16");
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0064, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0068, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0040, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0055, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0068, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0040.drawIndirect(buffer0063, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0030);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1058, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0020.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer003, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
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
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0070, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0033);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.drawIndirect(buffer0046, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer0074, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0079, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0031.drawIndirect(buffer0075, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndirect(buffer0064, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.end();
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder0011.drawIndirect(buffer0053, 0);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0052, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndirect(buffer0063, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0069, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0001.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder1020.draw(3);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0030.drawIndirect(buffer009, 0);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder0051.drawIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder0041.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer0068, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.drawIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0082, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0044, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.drawIndirect(buffer0048, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndirect(buffer0068, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndirect(buffer0052, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0030.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    render_pass_encoder0010.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndirect(buffer0085, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndirect(buffer0063, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
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
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder0041.drawIndirect(buffer0077, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
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
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0036);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0051.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
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
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0037);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.drawIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndirect(buffer0066, 0);
    compute_pass_encoder0000.end();
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0040.drawIndirect(buffer0090, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
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
                    buffer: buffer0092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0093,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0094, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1031);
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
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    render_pass_encoder0040.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.drawIndirect(buffer0063, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1085, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0097, 0);
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
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0040);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0011.drawIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0051.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0000.drawIndirect(buffer0085, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    render_pass_encoder0031.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndirect(buffer0073, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder0051.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
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
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0041);
    render_pass_encoder0011.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0011.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0095, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0097, 0);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder0001.drawIndirect(buffer0058, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0011.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0084, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0080, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1077, 0);
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndirect(buffer0097, 0);
    render_pass_encoder0021.drawIndirect(buffer0063, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00102, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00102, 0);
    render_pass_encoder0030.drawIndirect(buffer0071, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0011.endOcclusionQuery()
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
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0042);
    render_pass_encoder0001.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.end();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0044, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder1020.drawIndirect(buffer1059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
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
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0043);
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0094, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0031.popDebugGroup();
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
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
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
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
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    render_pass_encoder0001.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1076, 0);
    render_pass_encoder0030.drawIndirect(buffer00106, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer0063, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0051.end();
    render_pass_encoder0011.drawIndirect(buffer0066, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00111, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00111, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndirect(buffer0077, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0001.drawIndirect(buffer0041, 0);
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    render_pass_encoder0011.setIndexBuffer(buffer0095, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00109, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0051.drawIndirect(buffer00102, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0001.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndirect(buffer0085, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0021.drawIndirect(buffer00102, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0078, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1035);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder0000.drawIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.end();
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
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0046);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00111, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndirect(buffer0065, 0);
    render_pass_encoder0011.drawIndirect(buffer00112, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0031.drawIndirect(buffer00102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndirect(buffer0051, 0);
    render_pass_encoder0031.popDebugGroup();
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
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0047);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer00107, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0094, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder0041.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer00111, 0);
    render_pass_encoder0031.drawIndirect(buffer00112, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1097, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00117, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1097, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0041.drawIndirect(buffer00102, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndirect(buffer00111, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
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
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0048);
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
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
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0049);
    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1099,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1037);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndirect(buffer00117, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0040.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0063, 0);
    render_pass_encoder0050.drawIndirect(buffer0082, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1096, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer00102, 0);
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10100, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10100, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0099, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0094, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0041.drawIndirect(buffer0063, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.drawIndirect(buffer0097, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00119, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0040.drawIndirect(buffer0094, 0);
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
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0050);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer00115, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00118, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0095, "uint16");
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1038);
    render_pass_encoder0041.drawIndexedIndirect(buffer00102, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0030.drawIndirect(buffer00112, 0);
    render_pass_encoder0001.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer00110, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0044, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10103, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer00102, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0050.drawIndirect(buffer00111, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1020.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0099, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
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
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndirect(buffer00112, 0);
    render_pass_encoder0041.drawIndirect(buffer0097, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10105,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1039);
    render_pass_encoder0001.drawIndirect(buffer0059, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0071, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0001.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0097, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0011.drawIndirect(buffer0092, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0031.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0057, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder0011.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0050.drawIndirect(buffer00124, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0031.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00116, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0051.end();
    render_pass_encoder1020.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    render_pass_encoder0001.drawIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0031.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0051.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0038, 0);
    render_pass_encoder0051.end();
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
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0051);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0095, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00112, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndirect(buffer00102, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0051.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0087, 0);
    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    render_pass_encoder0001.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer00102, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.drawIndirect(buffer00116, 0);
    render_pass_encoder0000.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0031.drawIndirect(buffer0082, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndirect(buffer0094, 0);
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.draw(3);
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
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0052);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0019, 0);
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1041);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0050.drawIndirect(buffer00102, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0031.end();
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer0058, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    render_pass_encoder1020.drawIndirect(buffer1097, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0094, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0050.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0063, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00129, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0067, 0);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1042);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0021.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0068, "uint16");
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1043);
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10115,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1044);
    render_pass_encoder0041.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0072, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0000.drawIndirect(buffer0069, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0094, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0048, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndirect(buffer0069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0050.drawIndirect(buffer0097, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder0051.drawIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0094, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0073, 0);
    render_pass_encoder0001.drawIndirect(buffer0059, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0097, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10116, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10116, 0);
    render_pass_encoder0031.drawIndirect(buffer00124, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0051.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00130, 0);
    render_pass_encoder0011.drawIndirect(buffer00130, 0);
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    render_pass_encoder0021.drawIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder1020.drawIndirect(buffer1058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0010.drawIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00109, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder0010.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00131, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00131, 0);
    render_pass_encoder0000.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10117, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10117, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10118, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10118, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0011.drawIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0050.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10119, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10119, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10120, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10120, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00117, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0068, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer00131, 0);
    render_pass_encoder1020.drawIndirect(buffer10117, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1077, "uint16");
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
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer00130, 0);
    render_pass_encoder0021.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0001.drawIndirect(buffer0049, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0051.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer00131, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndirect(buffer00130, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0001.drawIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0095, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.end();
    render_pass_encoder1020.drawIndirect(buffer1088, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0069, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0011.drawIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer00131, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00117, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer00117, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0010.drawIndirect(buffer00112, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0021.drawIndirect(buffer00102, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0044, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00133, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00133, 0);
    render_pass_encoder0031.drawIndirect(buffer0099, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0000.drawIndirect(buffer00130, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0011.drawIndirect(buffer00111, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0078, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00134, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00134, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0011.drawIndirect(buffer0063, 0);
    render_pass_encoder0040.drawIndirect(buffer0063, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0000.drawIndirect(buffer00117, 0);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0031.drawIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0051.drawIndirect(buffer00124, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer0062, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndirect(buffer0095, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer00112, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00132, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0021.drawIndirect(buffer00135, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndirect(buffer0081, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00132, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0031.drawIndirect(buffer00102, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00117, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer00131, 0);
    render_pass_encoder0031.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.drawIndirect(buffer00132, 0);
    render_pass_encoder1020.drawIndirect(buffer1097, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
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
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0053);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0047, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder0031.drawIndirect(buffer00102, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0058, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00103, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10122,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1045);
    render_pass_encoder0050.drawIndirect(buffer00134, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00138, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00138, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0094, 0);
    render_pass_encoder0031.drawIndirect(buffer00132, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.setIndexBuffer(buffer00134, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0011.drawIndirect(buffer00111, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10123, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0068, 0);
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
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0054);
    render_pass_encoder0041.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10124, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10124, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00122, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0000.drawIndirect(buffer0044, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00127, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0031.drawIndirect(buffer00102, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.drawIndirect(buffer00134, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0001.drawIndirect(buffer00121, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0068, 0);
    render_pass_encoder0041.drawIndirect(buffer00111, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer00117, 0);
    render_pass_encoder0010.drawIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0011.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1020.drawIndirect(buffer1092, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder0020.drawIndirect(buffer00133, 0);
    render_pass_encoder0040.drawIndirect(buffer0068, 0);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0069, 0);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder0001.drawIndirect(buffer0055, 0);
    render_pass_encoder0031.setIndexBuffer(buffer00120, "uint16");
}