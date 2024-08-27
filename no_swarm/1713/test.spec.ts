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
    
    const array0 = new Float32Array([0.25, 0.25, -0.25, -1.0, -0.25, -0.75, -0.75, 0.5, -0.25, -0.75, -0.5, 1.0, 0.25, -0.5, 0.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.0, 0.5, 0.25, 0.0, -1.0, -0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, 0.25, -0.25, 1.0, -0.25, 0.25, -0.25, 0.5, 0.75, -0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.25, 0.0, -1.0, 1.0, -0.25, -0.5, 0.75, -0.75, -0.25, 0.5, 1.0, -0.5, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, -0.5, 0.75, 0.5, -0.5, -0.5, 0.25, -0.5, -0.25, 0.25, 0.0, ]);
    const array1 = new Float32Array([0.25, -0.25, -0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.5, -0.5, -0.75, -0.25, -0.5, -0.5, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, -0.5, 1.0, -0.5, -0.75, 0.5, -1.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.25, -0.75, 0.5, 0.0, -1.0, -0.5, 0.0, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, -0.5, -1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 0.5, 0.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, 0.5, 0.5, -0.5, -0.5, 0.0, -0.25, 1.0, 1.0, -0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 1.0, -0.5, -0.25, -1.0, 0.75, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, 0.5, -0.75, ]);
    const array2 = new Float32Array([-0.5, 0.25, -0.5, -0.25, 0.25, 0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -0.25, -0.25, 0.25, 1.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 0.5, -0.5, 1.0, 0.25, -1.0, -0.75, -1.0, 0.75, 0.25, -1.0, 0.25, -0.5, -1.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.5, -0.5, 0.5, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.5, 0.0, 1.0, 1.0, -0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, -0.5, -1.0, 1.0, -0.25, -0.5, 1.0, 0.5, 0.0, 1.0, 0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.pushErrorScope("internal");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture000.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.pushErrorScope("out-of-memory");
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    buffer100.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer000.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const array3 = new Float32Array([-0.75, -0.75, -1.0, 0.75, 0.25, -0.75, 0.5, 1.0, -0.5, -0.5, 0.5, 0.5, -0.75, -1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.0, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, -0.75, 0.75, -1.0, -0.75, 0.75, 0.25, -1.0, -1.0, 1.0, -0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 1.0, 0.75, 0.0, ]);
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0010.setPipeline(render_pipeline000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer100.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder102.insertDebugMarker("mymarker");
    
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
    buffer100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    query000.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
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
    
    query002.destroy()
    
    command_encoder100.clearBuffer(buffer101);
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    buffer001.destroy()
    command_encoder102.popDebugGroup()
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query001.destroy()
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer102 = command_encoder102.finish();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    buffer002.destroy()
    render_bundle_encoder100.popDebugGroup();
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
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder0010.popDebugGroup();
    query002.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder002.copyTextureToBuffer(
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder1010.popDebugGroup()
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setVertexBuffer(0, buffer000);
    
    
    const array4 = new Float32Array([0.75, -0.5, 0.75, -1.0, 0.0, 0.75, -0.25, 0.5, 0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, 0.75, -0.75, -0.75, -0.25, 0.0, 0.75, -0.5, 0.25, 1.0, 0.25, 1.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, 0.75, 0.0, 0.0, 0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 0.25, -0.75, 0.25, 1.0, 0.5, -1.0, 0.75, 0.75, -0.25, -1.0, 0.0, -1.0, -0.5, -1.0, -0.75, -0.25, -1.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.5, -1.0, -1.0, -0.75, -0.75, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, ]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    buffer101.destroy()
    
    render_pass_encoder0011.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
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
    
    render_bundle_encoder201.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    render_bundle_encoder101.popDebugGroup();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    buffer101.destroy()
    query001.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture001.destroy();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder0011.setStencilReference(1);
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    query002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.popDebugGroup();
    buffer003.destroy()
    buffer004.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    query001.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.popDebugGroup();
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    query102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer003.destroy()
    query000.destroy()
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0011.setPipeline(render_pipeline002);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_pass_encoder0030.setStencilReference(1);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    buffer005.destroy()
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0010.setStencilReference(1);
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query103.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0012.setPipeline(render_pipeline005);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    compute_pass_encoder1011.setPipeline(compute_pipeline100);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0012.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer007.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer103.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0012.setStencilReference(1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder0040.setPipeline(render_pipeline003);
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
    buffer006.destroy()
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0012.pushDebugGroup("group_marker");
    
    
    
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    render_bundle_encoder002.setPipeline(render_pipeline004);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder0012.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0010.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setVertexBuffer(0, buffer006);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    texture101.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
        occlusionQuerySet: query001
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0041.setPipeline(render_pipeline002);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0012.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0012.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0030.setStencilReference(1);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0001.setPipeline(render_pipeline003);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0001.setPipeline(compute_pipeline003);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group005);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    render_pass_encoder0031.setPipeline(render_pipeline005);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0015, 0);
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    render_bundle_encoder002.popDebugGroup();
    
    render_pass_encoder0012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    command_encoder003.clearBuffer(buffer0015);
    render_pass_encoder0012.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("validation");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
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
    command_encoder004.pushDebugGroup("mygroupmarker")
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    compute_pass_encoder1011.setBindGroup(0, bind_group100);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0011.destroy()
    render_pass_encoder0013.insertDebugMarker("marker");
    buffer009.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0011.popDebugGroup();
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0013.setPipeline(render_pipeline002);
    query100.destroy()
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer105.destroy()
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.draw(3);
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
        occlusionQuerySet: query003
    });
    render_pass_encoder0013.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder0011.insertDebugMarker("marker");
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group006);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0021.setPipeline(render_pipeline004);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder1011.popDebugGroup()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.setVertexBuffer(0, buffer007);
    render_pass_encoder0031.setVertexBuffer(0, buffer000);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder0031.end();
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group008);
    compute_pass_encoder1010.popDebugGroup()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group009);
    render_pass_encoder0000.popDebugGroup();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group0010);
    compute_pass_encoder3000.popDebugGroup()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.draw(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1010, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer0011);
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    render_pass_encoder0031.drawIndirect(buffer009, 0);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group0011);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0012.setVertexBuffer(0, buffer0025);
    render_pass_encoder0010.end();
    render_pass_encoder0011.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer000);
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

    render_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0000.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0012.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0027);
    render_pass_encoder0012.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer0012);
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group104);
    compute_pass_encoder1010.end();
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    render_pass_encoder0001.end();
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
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder1000.popDebugGroup()
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0013);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0014);
    render_pass_encoder0021.setVertexBuffer(0, buffer0010);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder1011.end();
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
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0013.setBindGroup(0, bind_group0015);
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0013.setVertexBuffer(0, buffer0013);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder0021.end();
    compute_pass_encoder1000.end();
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0013.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    const command_buffer001 = command_encoder001.finish();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0013.drawIndirect(buffer002, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0013.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1016, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0031.end();
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

    compute_pass_encoder1011.setBindGroup(0, bind_group105);
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

    compute_pass_encoder1011.setBindGroup(0, bind_group106);
    render_pass_encoder0013.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.end();
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0013.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0013.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0013.end();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0037, 0);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder0001.draw(3);
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0001.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0013.end();
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([]);
    render_pass_encoder0012.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0013.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0013.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0036, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    compute_pass_encoder1011.setBindGroup(0, bind_group108);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0013.end();
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0012.setIndexBuffer(buffer0024, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0036, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0040.draw(3);
    compute_pass_encoder1011.end();
    render_pass_encoder0041.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0020, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder0021.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0012.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
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
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1010);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0013.drawIndexedIndirect(buffer0016, 0);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
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
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0041.end();
    compute_pass_encoder1011.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    device10.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0012.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1010.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1034, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0020, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0012.drawIndirect(buffer0015, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0012.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0017);
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0013.drawIndirect(buffer0036, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0012.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexed(3);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0013.end();
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0013.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0013.drawIndexedIndirect(buffer005, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0013.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1037, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0012.drawIndirect(buffer0036, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0001.end();
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
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

    compute_pass_encoder1011.setBindGroup(0, bind_group1014);
    render_pass_encoder0012.drawIndexedIndirect(buffer0038, 0);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0013.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0013.drawIndirect(buffer0042, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder0012.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder0013.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0037, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
}