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
    
    const array0 = new Float32Array([-1.0, 0.0, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, 0.75, 0.0, 1.0, 0.25, -0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.0, 0.75, -0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.0, 0.25, 0.0, 0.25, -0.25, -0.5, -1.0, -1.0, 1.0, 1.0, 0.0, -0.25, -1.0, 0.0, -1.0, 0.25, -1.0, 0.25, -0.25, -0.5, -1.0, 0.5, -0.25, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 0.0, 0.75, -0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -1.0, -1.0, 0.0, 0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer100 = command_encoder100.finish();
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("out-of-memory");
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    texture102.destroy();
    query001.destroy()
    command_encoder101.popDebugGroup()
    const array1 = new Float32Array([-0.5, -0.25, 0.0, -0.75, 0.75, 1.0, -0.5, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, -0.25, 0.75, 1.0, -0.25, 0.0, 0.5, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 0.5, -0.5, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, 0.25, -0.25, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, -0.75, 0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 0.25, 0.5, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 0.25, -1.0, -0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.25, 0.0, -0.75, -0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -1.0, -1.0, -0.25, 0.0, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query003 = device00.createQuerySet({
        label: "query003",
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
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    query001.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.insertDebugMarker("mymarker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    command_encoder101.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    query004.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query004.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    texture101.destroy();
    
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer002,
        0
    )
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer003);
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    
    
    
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer100.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    buffer002.destroy()
    
    const command_buffer102 = command_encoder102.finish();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.clearBuffer(buffer001);
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
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
        occlusionQuerySet: query003
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    
    render_pass_encoder0000.beginOcclusionQuery(0)
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    buffer003.destroy()
    texture002.destroy();
    
    device00.destroy();
    
    
    query100.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer102.destroy()
    buffer100.destroy()
    texture100.destroy();
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer103.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query100
    });
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder100.setPipeline(render_pipeline102);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    render_pass_encoder1040.setPipeline(render_pipeline102);
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    device10.queue.submit([]);
    render_pass_encoder0000.insertDebugMarker("marker");
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
        layout: render_pipeline102.getBindGroupLayout(0),
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
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const array2 = new Float32Array([0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -1.0, -1.0, -1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.75, 0.0, 0.75, 0.5, -0.25, -1.0, -0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, -0.5, -0.5, 1.0, -1.0, 1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -0.25, -1.0, -0.25, 0.5, -1.0, 1.0, 1.0, 0.0, 1.0, -0.25, 1.0, 0.25, -1.0, -0.5, 0.25, 0.5, -1.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.25, 0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, -0.25, -0.5, 1.0, -1.0, -0.75, 0.75, -0.75, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1040.insertDebugMarker("marker");
    const array3 = new Float32Array([-1.0, -1.0, 1.0, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, -0.75, -0.75, -0.5, 0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -1.0, -0.75, -0.75, 0.5, 0.0, 0.5, 0.5, 0.0, 0.5, 0.0, 0.5, -1.0, -0.25, 0.0, -0.5, 0.25, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.75, -0.75, -0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 0.0, 0.25, 0.0, -1.0, -0.25, -0.5, 0.0, 1.0, 0.75, 0.25, 1.0, 0.0, 0.0, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, 1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -0.25, ]);
    texture104.destroy();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer106.destroy()
    command_encoder103.clearBuffer(buffer104);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    buffer105.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1040.setStencilReference(1);
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    query100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    texture001.destroy();
    query101.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer101.destroy()
    render_pass_encoder1041.beginOcclusionQuery(0)
    render_pass_encoder1031.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1031.setPipeline(render_pipeline102);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group103);
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    
    render_pass_encoder1041.executeBundles([])
    
    render_pass_encoder1031.insertDebugMarker("marker");
    texture105.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer109.destroy()
    command_encoder104.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.setPipeline(render_pipeline102);
    render_pass_encoder1041.setPipeline(render_pipeline102);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    buffer108.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1031.setVertexBuffer(0, buffer104);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer107.destroy()
    render_pass_encoder1031.setStencilReference(1);
    buffer1011.destroy()
    render_pass_encoder1040.setVertexBuffer(0, buffer106);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer1011,
        0
    )
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_pass_encoder1031.drawIndexed(3);
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    buffer103.destroy()
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.endOcclusionQuery()
    buffer104.destroy()
    buffer1012.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    compute_pass_encoder1040.popDebugGroup()
    device20.destroy();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1031.end();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    command_encoder103.clearBuffer(buffer1010);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group105);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    buffer1013.destroy()
    render_pass_encoder1040.setStencilReference(1);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1040.popDebugGroup();
    
    buffer1015.destroy()
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group106);
    command_encoder105.clearBuffer(buffer102);
    compute_pass_encoder1010.popDebugGroup()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1041.setStencilReference(1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1041.setVertexBuffer(0, buffer108);
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    render_bundle_encoder101.setIndexBuffer(buffer107, "uint16");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_bundle_encoder100.setIndexBuffer(buffer1016, "uint16");
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
    
    
    render_pass_encoder1041.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1011.executeBundles([])
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    render_bundle_encoder100.setIndexBuffer(buffer1011, "uint16");
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1061.setPipeline(render_pipeline104);
    render_bundle_encoder100.drawIndexedIndirect(buffer107, 0);
    
    render_bundle_encoder102.setPipeline(render_pipeline104);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query100.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer1010.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1016
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
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1060.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.drawIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.drawIndexed(3);
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    render_bundle_encoder101.popDebugGroup();
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer1013,
        0
    )
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    texture106.destroy();
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer109
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1070.setPipeline(render_pipeline103);
    render_pass_encoder1060.setStencilReference(1);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1070.setStencilReference(1);
    const compute_pass_encoder1051 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1051" });
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1061.insertDebugMarker("marker");
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    command_encoder107.pushDebugGroup("mygroupmarker")
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1051.insertDebugMarker("marker")
    render_pass_encoder1070.insertDebugMarker("marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1011.setPipeline(render_pipeline103);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer1018.destroy()
    buffer1014.destroy()
    render_pass_encoder1061.insertDebugMarker("marker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    buffer1017.destroy()
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer108.destroy()
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
    render_pass_encoder1061.setStencilReference(1);
    buffer1016.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_pass_encoder1061.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const array4 = new Float32Array([0.25, -0.5, -0.75, 0.75, 0.5, -0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -0.5, -1.0, -0.75, 0.75, -0.5, 0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 1.0, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 0.75, 0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, 0.25, -0.75, 1.0, -1.0, -0.25, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -0.25, 0.75, -0.25, -0.25, 1.0, 0.25, -0.75, -0.5, -0.5, 0.75, -1.0, 0.25, -0.75, -1.0, -1.0, 0.75, 1.0, -1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, 0.0, -0.5, 0.25, 1.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.5, 0.5, 0.25, ]);
    render_pass_encoder1061.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    const array5 = new Float32Array([-1.0, 0.5, -0.25, -0.75, -1.0, -1.0, 0.25, -0.5, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, -0.25, 0.0, -0.25, -1.0, 0.25, 0.5, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 1.0, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, -0.25, 0.5, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.25, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -0.75, 0.25, 0.25, -0.75, -0.25, 0.25, -0.5, 0.25, 0.0, -0.75, 0.0, -1.0, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, ]);
    command_encoder101.copyBufferToBuffer(
        buffer1014,
        0,
        buffer1012,
        0,
        400
    );
    
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1010.popDebugGroup();
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group107);
    render_pass_encoder1061.setVertexBuffer(0, buffer104);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group108);
    render_pass_encoder1070.setVertexBuffer(0, buffer1018);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group109);
    render_pass_encoder1070.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1015, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1060.setVertexBuffer(0, buffer1018);
    render_pass_encoder1010.draw(3);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1010);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1070.setIndexBuffer(buffer109, "uint16");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1011.setVertexBuffer(0, buffer1025);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.end();
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
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
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    command_encoder107.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.popDebugGroup();
    device40.queue.submit([]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1030.end();
    render_pass_encoder1070.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.popDebugGroup();
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer107, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1070.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.end();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.end();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1061.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1018, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1011.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer106, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1023, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
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
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    device40.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder1051.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1051.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1030.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    device10.queue.submit([]);
    render_pass_encoder1070.draw(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.draw(3);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1070.setIndexBuffer(buffer103, "uint16");
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    compute_pass_encoder1051.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1070.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1051.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.setVertexBuffer(0, buffer001);
    render_pass_encoder1061.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1070.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer102, ]);
}