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
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([-0.25, -0.5, -0.75, -1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 1.0, -0.25, 0.75, -1.0, 0.75, 0.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, -1.0, 0.75, 0.25, 0.25, 1.0, -0.75, 0.0, -0.75, 0.25, -0.25, -0.75, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 0.25, 0.5, 0.75, 0.25, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, -0.75, 0.75, 0.0, -0.75, -1.0, -1.0, 0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.0, 0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -0.25, 0.0, 0.5, -0.25, -0.5, 0.0, 0.75, 1.0, ]);
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.queue.submit([]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array1 = new Float32Array([0.0, -0.25, -0.25, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.25, -0.25, 1.0, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.25, 0.5, 0.5, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.5, -1.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -0.75, 0.0, 0.25, 0.75, -0.75, -0.75, -0.25, 1.0, -0.25, -0.75, -0.5, -0.75, -0.5, 0.75, -0.75, 0.25, 0.5, 0.75, -0.75, 0.5, -0.25, 0.5, 0.5, 0.0, 0.0, 0.25, 1.0, -0.25, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    buffer100.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.queue.submit([]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder100.clearBuffer(buffer101);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder102.popDebugGroup()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer001.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    command_encoder100.insertDebugMarker("mymarker");
    texture000.destroy();
    texture001.destroy();
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer102.destroy()
    
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
    command_encoder100.clearBuffer(buffer101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer103 = command_encoder103.finish();
    device00.pushErrorScope("internal");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture100.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array2 = new Float32Array([-0.25, -0.5, -0.75, 0.0, -0.75, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, -0.25, -1.0, 0.0, 0.75, 1.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -0.75, -0.5, -0.75, -0.75, -1.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.75, 0.5, 1.0, -0.75, 0.5, 0.5, -0.25, -1.0, 0.0, -0.25, 0.5, -0.25, 1.0, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, 0.0, -0.25, -0.75, 0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.25, 0.25, 0.0, -0.75, -0.5, -0.5, 0.75, 0.25, 0.5, 1.0, -0.5, -0.75, 0.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 0.0, -1.0, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, -0.25, 0.75, -0.25, -0.75, 0.75, ]);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.submit([command_buffer103, ]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0000.executeBundles([])
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder0000.executeBundles([])
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    command_encoder104.copyBufferToBuffer(
        buffer106,
        0,
        buffer101,
        0,
        400
    );
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer101.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.executeBundles([])
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    buffer000.destroy()
    
    
    texture200.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setStencilReference(1);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_pass_encoder0001.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2001.insertDebugMarker("marker");
    buffer002.destroy()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2001.executeBundles([])
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder2001.beginOcclusionQuery(0)
    
    render_pass_encoder2000.setStencilReference(1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture002.destroy();
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
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2001.endOcclusionQuery()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    render_pass_encoder2001.setPipeline(render_pipeline200);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer003.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.popDebugGroup();
    buffer201.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2001.beginOcclusionQuery(1)
    render_pass_encoder0000.setStencilReference(1);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    texture201.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2001.pushDebugGroup("group_marker");
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    buffer200.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer202.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    render_pass_encoder0020.executeBundles([render_bundle_encoder000, ])
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query000.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
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
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0021.executeBundles([render_bundle_encoder001, ])
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    
    query202.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder2010.setStencilReference(1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder2000.insertDebugMarker("marker");
    query000.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0001.insertDebugMarker("marker");
    
    render_pass_encoder0010.popDebugGroup();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_buffer001 = command_encoder001.finish();
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
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder2000.popDebugGroup();
    
    texture003.destroy();
    const command_buffer300 = command_encoder300.finish();
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    buffer204.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0010.beginOcclusionQuery(0)
    render_pass_encoder0021.executeBundles([])
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.submit([command_buffer101, ]);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setPipeline(render_pipeline000);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group001);
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2020.setPipeline(render_pipeline201);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    compute_pass_encoder0020.dispatchWorkgroups(100);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    render_pass_encoder1040.setPipeline(render_pipeline102);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder2001.setVertexBuffer(0, buffer201);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    render_pass_encoder2000.end();
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0030.setVertexBuffer(0, buffer0010);
    render_pass_encoder0010.setIndexBuffer(buffer006, "uint16");
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

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2010.setVertexBuffer(0, buffer207);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndexed(3);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
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

    render_pass_encoder2020.setBindGroup(0, bind_group203);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    device30.queue.submit([]);
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder0021.setVertexBuffer(0, buffer009);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0000.popDebugGroup();
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

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    render_pass_encoder2020.draw(3);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group101);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer0017);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0001.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0001.end();
    render_pass_encoder0000.end();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.end();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0016, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    command_encoder201.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.end();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0000.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    device20.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1040.setVertexBuffer(0, buffer105);
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0000.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder2010.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0020, 0);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    render_pass_encoder0001.draw(3);
    device00.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    device30.queue.submit([]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1040.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0010.end();
    device30.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder2000.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0023, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    compute_pass_encoder0020.end();
    device30.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2001.end();
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.draw(3);
    device00.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.end();
    device30.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    device30.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder0020.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1040.draw(3);
    command_encoder100.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
}