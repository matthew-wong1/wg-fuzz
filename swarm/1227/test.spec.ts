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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array0 = new Float32Array([0.0, -0.25, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.75, -0.75, 0.25, -1.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, -0.5, 0.75, 0.75, 0.25, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, -0.5, -1.0, 0.75, 0.75, 0.25, 0.75, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, 0.25, -1.0, 0.25, -0.75, 0.75, 0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.25, 0.5, -0.75, -1.0, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 0.0, -1.0, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, -0.25, -0.25, 0.0, -0.5, 0.5, 0.25, -0.5, 0.75, 0.0, ]);
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.25, 0.75, 0.0, -0.5, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, -0.25, 0.0, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, -1.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.0, 0.25, -0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, -1.0, -1.0, 1.0, 1.0, 0.75, -1.0, -0.25, -0.25, -1.0, 1.0, -0.5, -0.75, 0.5, -0.75, 0.75, -0.75, 0.25, -0.75, -1.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.0, 1.0, -0.75, 1.0, 1.0, 1.0, 1.0, 1.0, 0.25, -0.5, -0.5, -0.25, 0.75, -0.75, -0.25, 0.25, -0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, -1.0, 0.25, 0.25, -0.5, -0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    command_encoder000.popDebugGroup()
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
    query001.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture000.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder001.clearBuffer(buffer001);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer001);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder001.clearBuffer(buffer002);
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder000.setPipeline(render_pipeline002);
    query000.destroy()
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    device00.queue.submit([]);
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
    const array2 = new Float32Array([-0.25, -1.0, -0.5, -0.5, 0.5, -0.5, 1.0, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, -0.5, -0.25, -1.0, 0.5, 1.0, 0.0, 0.25, -0.75, 0.0, 0.25, -0.75, 1.0, 0.75, -0.5, 0.25, 0.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, -0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 0.0, -1.0, 0.25, -1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, 0.5, 0.0, 0.0, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 1.0, 0.5, 1.0, -1.0, -1.0, -0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.0, -0.25, 0.75, -0.25, 1.0, 0.5, 1.0, -0.5, 0.5, 0.0, -1.0, ]);
    command_encoder000.clearBuffer(buffer002);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder001.clearBuffer(buffer002);
    command_encoder000.clearBuffer(buffer000);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder002.clearBuffer(buffer001);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
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
    command_encoder001.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.popDebugGroup()
    command_encoder001.copyBufferToBuffer(
        buffer006,
        0,
        buffer001,
        0,
        400
    );
    command_encoder002.clearBuffer(buffer005);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder003.clearBuffer(buffer001);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder003.clearBuffer(buffer001);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
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
    const command_buffer002 = command_encoder002.finish();
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer001 = command_encoder001.finish();
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    query001.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    command_encoder004.copyTextureToTexture(
        {
            texture: texture001
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const command_buffer100 = command_encoder100.finish();
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.clearBuffer(buffer002);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer002
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
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer008
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
    command_encoder000.copyBufferToBuffer(
        buffer006,
        0,
        buffer008,
        0,
        400
    );
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder004.clearBuffer(buffer001);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder004.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder000.clearBuffer(buffer007);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
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
    command_encoder003.insertDebugMarker("mymarker");
    query001.destroy()
    const array3 = new Float32Array([0.5, -0.75, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, 0.5, -0.75, -0.5, -0.25, -0.5, -0.75, 1.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.75, 0.0, -1.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.25, 0.25, 0.25, -0.5, -0.75, -1.0, 1.0, 0.5, -1.0, -0.25, -1.0, 0.5, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 0.5, 0.25, -0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, 0.75, 0.75, 0.75, -0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 0.25, -0.25, -0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.25, 0.5, 0.5, -1.0, -0.25, 0.75, ]);
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder004.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer008,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer007);
    
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer002
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
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder003.clearBuffer(buffer008);
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer002,
        0,
        400
    );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer004 = command_encoder004.finish();
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToBuffer(
        buffer008,
        0,
        buffer002,
        0,
        400
    );
    command_encoder003.clearBuffer(buffer001);
    command_encoder000.clearBuffer(buffer008);
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    query004.destroy()
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    texture000.destroy();
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    query000.destroy()
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
    
    query002.destroy()
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    query002.destroy()
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
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    command_encoder003.clearBuffer(buffer007);
    query000.destroy()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer000,
        0,
        400
    );
    command_encoder003.clearBuffer(buffer007);
    query003.destroy()
    command_encoder003.clearBuffer(buffer002);
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder001.setIndexBuffer(buffer007, "uint16");
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
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
    command_encoder005.clearBuffer(buffer008);
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const command_buffer005 = command_encoder005.finish();
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer008,
        0,
        400
    );
    command_encoder003.copyTextureToTexture(
        {
            texture: texture004
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
    render_bundle_encoder001.drawIndexed(3);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
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
    command_encoder003.popDebugGroup()
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    command_encoder003.clearBuffer(buffer008);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
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
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
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
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer003,
        0,
        400
    );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder000.clearBuffer(buffer002);
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer009,
        0,
        400
    );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_bundle_encoder002.drawIndirect(buffer001, 0);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    query004.destroy()
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder000.copyTextureToTexture(
        {
            texture: texture003
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
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
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
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.clearBuffer(buffer002);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder000.copyBufferToBuffer(
        buffer006,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    command_encoder000.clearBuffer(buffer002);
    query005.destroy()
    
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    command_encoder003.clearBuffer(buffer001);
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    const command_buffer101 = command_encoder101.finish();
    command_encoder000.copyTextureToTexture(
        {
            texture: texture004
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
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    command_encoder000.copyTextureToTexture(
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
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    texture100.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device10.pushErrorScope("internal");
    command_encoder000.clearBuffer(buffer009);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.copyBufferToBuffer(
        buffer009,
        0,
        buffer009,
        0,
        400
    );
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.copyTextureToTexture(
        {
            texture: texture004
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const array4 = new Float32Array([-0.5, 0.75, 1.0, 1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 1.0, -0.25, -0.25, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, -0.25, -1.0, 0.25, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 1.0, -1.0, 0.5, -1.0, -1.0, -0.25, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, 0.0, -0.25, 1.0, -1.0, -0.25, 0.75, -0.25, 0.5, 0.0, 0.25, -0.5, 0.75, 0.25, 0.25, -0.5, 0.5, 1.0, -0.25, -1.0, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 1.0, -1.0, 0.75, -0.5, 0.75, 0.5, 0.0, 0.0, 0.0, -0.75, -0.75, -0.75, 0.5, -0.25, 0.25, 0.25, 0.25, 0.0, -0.75, 0.5, 0.5, 0.5, ]);
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
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder003.clearBuffer(buffer002);
    command_encoder003.clearBuffer(buffer008);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    command_encoder000.clearBuffer(buffer007);
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer009,
        0,
        400
    );
    
    query003.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    command_encoder003.clearBuffer(buffer007);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.clearBuffer(buffer001);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query003.destroy()
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture001
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
    
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer0010,
        0
    )
    query005.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
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
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    command_encoder003.copyBufferToBuffer(
        buffer005,
        0,
        buffer002,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer0012,
        0,
        buffer007,
        0,
        400
    );
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
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    {
        await buffer0012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0012.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture004.destroy();
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([0.25, -1.0, 1.0, -1.0, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, 0.0, -0.25, -1.0, -1.0, 0.25, -0.75, 0.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.25, 0.5, -1.0, 0.0, -0.75, -0.25, 0.75, 1.0, 1.0, 0.75, 0.25, 0.0, -0.75, 0.25, 0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, 0.25, -1.0, -0.5, 0.0, 0.5, -0.75, -0.25, -0.75, 0.0, 1.0, -0.5, -0.75, 0.75, 1.0, 0.0, -0.75, -0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.75, 0.0, 0.0, 0.5, 1.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.75, 0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, 0.25, -1.0, 0.5, 1.0, -0.25, 0.5, ]);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
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
    
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture003
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    command_encoder000.copyBufferToBuffer(
        buffer008,
        0,
        buffer0010,
        0,
        400
    );
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer0010,
        0
    )
    query006.destroy()
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
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
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    command_encoder003.copyTextureToTexture(
        {
            texture: texture003
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
    texture005.destroy();
    query000.destroy()
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer0010,
        0,
        buffer0011,
        0,
        400
    );
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.clearBuffer(buffer009);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
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
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    command_encoder000.clearBuffer(buffer007);
    command_encoder000.copyBufferToBuffer(
        buffer007,
        0,
        buffer001,
        0,
        400
    );
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    command_encoder000.clearBuffer(buffer001);
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
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
    command_encoder000.clearBuffer(buffer007);
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
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
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
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
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer008,
        0,
        400
    );
    command_encoder003.clearBuffer(buffer002);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
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
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_bundle_encoder002.finish();
    command_encoder003.copyBufferToBuffer(
        buffer009,
        0,
        buffer008,
        0,
        400
    );
    render_bundle_encoder000.setIndexBuffer(buffer007, "uint16");
    command_encoder003.clearBuffer(buffer008);
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
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
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder000.drawIndirect(buffer006, 0);
    texture101.destroy();
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer0011,
        0
    )
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    query006.destroy()
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer0012,
        0
    )
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.pushErrorScope("internal");
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
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer001,
        0
    )
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
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
    command_encoder003.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer008,
        0,
        400
    );
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture006.destroy();
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder006.copyBufferToBuffer(
        buffer005,
        0,
        buffer005,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer0013,
        0,
        buffer001,
        0,
        400
    );
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([]);
    device20.queue.submit([]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer006, ]);
    command_encoder000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
}