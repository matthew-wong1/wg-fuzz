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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array0 = new Float32Array([0.75, -0.75, 0.75, 0.25, 0.75, -0.75, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -1.0, -0.5, 0.75, 0.25, 1.0, 1.0, 0.25, -1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, 1.0, 0.5, -0.25, 1.0, 0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.25, -0.75, 0.5, 1.0, -0.25, 0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.5, -1.0, -0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 1.0, 0.5, 0.0, 0.75, 1.0, 0.75, -0.75, -1.0, 1.0, 0.75, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 1.0, -1.0, -0.5, 1.0, -0.5, -1.0, -0.75, -0.5, ]);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.pushErrorScope("out-of-memory");
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder002.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array1 = new Float32Array([-0.75, 0.0, 1.0, 0.0, -1.0, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, 0.0, 0.5, -0.75, -0.75, -1.0, 0.0, -0.5, -1.0, -0.5, -0.5, -1.0, 0.0, 1.0, -1.0, 0.75, -0.75, 0.5, -0.75, -0.5, 0.0, -0.5, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, 0.75, 1.0, 0.5, -0.75, 0.25, 1.0, 0.5, -1.0, 0.5, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, -1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.75, -0.5, 0.25, -0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 0.25, 0.5, 0.5, -0.75, 0.25, -1.0, -0.75, -0.75, ]);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    texture100.destroy();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    command_encoder002.clearBuffer(buffer001);
    const command_buffer000 = command_encoder000.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    command_encoder003.insertDebugMarker("mymarker");
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
        occlusionQuerySet: query000
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
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
    const array2 = new Float32Array([0.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, 0.0, 1.0, -0.5, 0.0, 0.75, 1.0, 0.5, -1.0, 0.75, 0.75, -0.75, -0.75, 0.75, -1.0, -1.0, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -0.25, 0.0, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.75, 0.0, 0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -0.75, -0.75, -0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.5, 1.0, 0.75, 0.75, 0.0, -0.25, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, 0.0, 0.25, -0.25, -0.5, 0.5, -0.25, 0.75, -0.75, -0.75, 1.0, ]);
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query002.destroy()
    
    
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
    query002.destroy()
    device10.pushErrorScope("validation");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    query002.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.beginOcclusionQuery(0)
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
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0021.executeBundles([])
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer001.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
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
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_pass_encoder0021.setPipeline(render_pipeline001);
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder100.insertDebugMarker("mymarker");
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer002.destroy()
    texture000.destroy();
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
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder004.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    
    command_encoder100.clearBuffer(buffer100);
    render_pass_encoder0021.endOcclusionQuery()
    query001.destroy()
    render_pass_encoder0020.executeBundles([])
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0030.setStencilReference(1);
    texture101.destroy();
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0020.popDebugGroup();
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
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    render_pass_encoder0030.setStencilReference(1);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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

    render_pass_encoder0040.setBindGroup(0, bind_group000);
    
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
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture001.destroy();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0040.beginOcclusionQuery(1)
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query003
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    buffer004.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer008.destroy()
    render_pass_encoder0011.beginOcclusionQuery(0)
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: undefined
    });
    buffer009.destroy()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query003
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    buffer0012.destroy()
    render_pass_encoder0011.endOcclusionQuery()
    texture102.destroy();
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer0014.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer0014,
        0
    )
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0011.setPipeline(render_pipeline001);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder001.copyBufferToBuffer(
        buffer005,
        0,
        buffer008,
        0,
        400
    );
    render_pass_encoder0040.setVertexBuffer(0, buffer0012);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0031.insertDebugMarker("marker")
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const command_buffer005 = command_encoder005.finish();
    
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    buffer007.destroy()
    render_pass_encoder0031.beginOcclusionQuery(0)
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder0031.setPipeline(compute_pipeline002);
    command_encoder003.insertDebugMarker("mymarker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    command_encoder003.clearBuffer(buffer007);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0011.beginOcclusionQuery(0)
    render_pass_encoder0011.setStencilReference(1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0031.setStencilReference(1);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_bundle_encoder000.setIndexBuffer(buffer004, "uint16");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.setVertexBuffer(0, buffer009);
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    render_pass_encoder0031.executeBundles([render_bundle_encoder000, ])
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
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

    render_pass_encoder0011.setBindGroup(0, bind_group005);
    
    compute_pass_encoder0030.setPipeline(compute_pipeline005);
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
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder004.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.endOcclusionQuery()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    compute_pass_encoder0031.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder003.copyBufferToBuffer(
        buffer006,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0031.endOcclusionQuery()
    
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder000.setIndexBuffer(buffer0015, "uint16");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    buffer102.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer0013.destroy()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder1011.setPipeline(render_pipeline102);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
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
        occlusionQuerySet: query002
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder000.draw(3);
    
    render_pass_encoder0011.beginOcclusionQuery(0)
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.finish();
    
    buffer100.destroy()
    render_pass_encoder0022.setPipeline(render_pipeline000);
    render_pass_encoder0030.setStencilReference(1);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    query002.destroy()
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer005.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
        occlusionQuerySet: query003
    });
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer101.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder0030.setVertexBuffer(0, buffer004);
    render_pass_encoder0041.setStencilReference(1);
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_pass_encoder0011.setVertexBuffer(0, buffer009);
    query100.destroy()
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0021.setStencilReference(1);
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

    compute_pass_encoder0040.setBindGroup(0, bind_group007);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    compute_pass_encoder0031.insertDebugMarker("marker")
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.beginOcclusionQuery(2)
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query002.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder0011.draw(3);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder006.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer0017,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer0014,
        0
    )
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_pass_encoder0041.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer0013,
        0
    )
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    command_encoder001.copyBufferToBuffer(
        buffer0015,
        0,
        buffer009,
        0,
        400
    );
    buffer0019.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0020.setStencilReference(1);
    
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder1020.endOcclusionQuery()
    buffer0017.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    buffer0021.destroy()
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    command_encoder006.copyBufferToBuffer(
        buffer0019,
        0,
        buffer0018,
        0,
        400
    );
    render_pass_encoder1000.popDebugGroup();
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group008);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0010.draw(3);
    render_pass_encoder1001.setPipeline(render_pipeline102);
    compute_pass_encoder0010.end();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.setPipeline(render_pipeline001);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.end();
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
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

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0011);
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
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
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0022.setBindGroup(0, bind_group0012);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0022.setVertexBuffer(0, buffer0023);
    render_pass_encoder0022.setIndexBuffer(buffer0022, "uint16");
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
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group0013);
    render_pass_encoder0022.setIndexBuffer(buffer0031, "uint16");
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0022.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer003);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0022.setIndexBuffer(buffer000, "uint16");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0022.endOcclusionQuery()
    render_pass_encoder1001.setVertexBuffer(0, buffer100);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0021.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0022.end();
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group0015);
    render_pass_encoder1001.drawIndexed(3);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1001.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder0010.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0022.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    command_encoder002.popDebugGroup()
    render_pass_encoder0041.setVertexBuffer(0, buffer0039);
    render_pass_encoder0041.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0041.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0022.drawIndirect(buffer0039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer105);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    compute_pass_encoder0031.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    device20.queue.submit([]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    const command_buffer100 = command_encoder100.finish();
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0022.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.end();
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0020.popDebugGroup();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder0022.drawIndirect(buffer0020, 0);
    render_pass_encoder1000.drawIndexed(3);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
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
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0018);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1020.end();
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0020);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder0030.drawIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder1001.end();
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0012, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0042, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0038, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder0010.drawIndirect(buffer000, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0021);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0022.setIndexBuffer(buffer000, "uint16");
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0022);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0022.draw(3);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0010.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0031.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0022.drawIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder0040.drawIndirect(buffer0021, 0);
    render_pass_encoder0022.end();
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder0022.drawIndirect(buffer003, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0022.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0022.drawIndirect(buffer002, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0031.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0022.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder1020.popDebugGroup();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0023);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0058, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndexedIndirect(buffer0058, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    render_pass_encoder1011.end();
    device20.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0022.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1011.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0041.setIndexBuffer(buffer0023, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1001.end();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0024);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0055, 0);
    render_pass_encoder1000.end();
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0025);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    compute_pass_encoder0031.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0053, 0);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
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
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0026);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    render_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0011.endOcclusionQuery()
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0022.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0022.end();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0058, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.drawIndirect(buffer0057, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0041.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0013, 0);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0028);
    render_pass_encoder1001.end();
    render_pass_encoder0010.end();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0040.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
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
        layout: compute_pipeline005.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0029);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    render_pass_encoder0011.drawIndirect(buffer0029, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0022.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.end();
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0043, "uint16");
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0030);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0031.end();
    render_pass_encoder0020.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndirect(buffer0039, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0078, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0056, 0);
    render_pass_encoder0022.drawIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndirect(buffer0050, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0041.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
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
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0031);
    render_pass_encoder0040.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0022.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0022.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0073, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0041.drawIndirect(buffer0078, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder0040.drawIndirect(buffer0078, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0022.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0022.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.end();
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
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    render_pass_encoder0021.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0010.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0058, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0063, "uint16");
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
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0033);
    render_pass_encoder0041.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0011.drawIndirect(buffer0073, 0);
    render_pass_encoder0021.drawIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer0044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0077, 0);
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
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0034);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0064, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0022.drawIndirect(buffer0059, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0088, 0);
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
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0035);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0011.drawIndirect(buffer0082, 0);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0041.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder0041.drawIndirect(buffer0068, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0021.drawIndirect(buffer0088, 0);
    render_pass_encoder0022.drawIndirect(buffer0055, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0041.popDebugGroup();
}