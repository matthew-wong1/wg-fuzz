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
    const array0 = new Float32Array([0.5, -0.5, 1.0, -0.25, 1.0, 0.25, -0.75, -0.5, 0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.5, -0.75, 1.0, -0.5, 0.75, -0.5, 0.75, -0.75, 0.5, -0.75, -0.75, -0.25, 0.25, 0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.25, 0.25, -0.25, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.25, -1.0, 0.5, 0.25, 0.0, 1.0, 0.5, 0.0, -0.25, -0.25, -0.75, 1.0, 1.0, 0.5, 0.75, 1.0, 0.25, -0.25, -0.75, 0.75, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.0, 0.25, 0.25, 0.5, 0.5, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.25, 1.0, -1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -0.25, 1.0, 0.25, -0.75, 1.0, -1.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, -0.25, 1.0, 0.25, 0.0, 0.5, -0.25, -0.25, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.75, -0.5, 0.25, 0.5, -0.25, -1.0, 0.0, -0.75, 0.5, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, -1.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, -1.0, -0.25, 0.75, 0.25, 0.25, 0.75, -0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture000.destroy();
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array2 = new Float32Array([-0.5, 1.0, -0.75, 0.5, 0.75, 1.0, 0.0, 0.5, -1.0, -0.75, -1.0, -0.25, 0.5, -0.75, -0.25, 0.5, 1.0, 0.75, -0.5, 0.0, -0.75, -1.0, -0.25, -0.5, 0.0, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, 0.75, 1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 0.75, -0.75, 0.0, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, -0.5, 1.0, -0.5, -0.25, -0.75, -0.25, 0.25, 0.0, 1.0, 0.0, 0.25, -1.0, -0.75, -1.0, 0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.25, 0.5, 0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 1.0, 0.75, 0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.0, 0.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyTextureToTexture(
        {
            texture: texture001
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture001.destroy();
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array3 = new Float32Array([1.0, 0.0, -1.0, -1.0, 0.75, -0.25, 0.25, 0.0, 0.75, -0.75, 1.0, -0.5, -0.25, -0.5, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.0, -1.0, 1.0, -0.25, -0.5, 1.0, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, 1.0, 0.5, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -1.0, 0.25, 0.25, 0.5, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, -0.75, -0.5, 0.75, -0.75, 1.0, 0.0, 1.0, 0.0, -0.75, 0.75, 0.0, 0.0, 0.75, 0.25, -1.0, -1.0, -0.25, 0.75, 0.5, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, -0.5, -0.75, -0.5, 0.75, -1.0, 0.25, -1.0, -0.75, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer000.destroy()
    
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    command_encoder002.clearBuffer(buffer003);
    command_encoder003.clearBuffer(buffer002);
    command_encoder002.clearBuffer(buffer003);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer003.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    device00.pushErrorScope("internal");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.draw(3);
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
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    buffer002.destroy()
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("out-of-memory");
    
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture002.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer004.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    command_encoder002.copyBufferToBuffer(
        buffer007,
        0,
        buffer007,
        0,
        400
    );
    compute_pass_encoder0000.popDebugGroup()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    command_encoder003.clearBuffer(buffer007);
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer006.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture004.destroy();
    
    command_encoder001.clearBuffer(buffer003);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder002.copyBufferToBuffer(
        buffer007,
        0,
        buffer005,
        0,
        400
    );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer001.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    command_encoder002.clearBuffer(buffer006);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer005
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
    command_encoder002.clearBuffer(buffer004);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder000.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device20.destroy();
    
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device40.pushErrorScope("validation");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0030.popDebugGroup()
    
    device30.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
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
    command_encoder002.copyTextureToTexture(
        {
            texture: texture005
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer007.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer008.destroy()
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture005.destroy();
    
    texture001.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const array4 = new Float32Array([-0.25, -0.5, -0.75, 0.5, 0.0, -0.75, 0.5, -0.5, -1.0, -0.75, 0.0, 0.25, 0.0, -0.75, -1.0, 1.0, -0.5, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, -0.25, -1.0, 1.0, 0.5, -0.75, 1.0, -0.75, 0.0, 1.0, -0.25, 0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 0.25, -0.25, -0.25, 0.75, -1.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 0.0, -1.0, -0.75, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.25, -0.75, 0.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.5, -0.25, -0.25, 0.75, 0.75, 1.0, 0.5, 0.25, -0.25, 0.25, -0.5, -0.25, -0.25, 0.25, -0.5, -0.25, ]);
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setVertexBuffer(0, buffer007);
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.popDebugGroup()
    
    render_bundle_encoder002.setPipeline(render_pipeline006);
    
    texture006.destroy();
    render_bundle_encoder001.setIndexBuffer(buffer003, "uint16");
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
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer004.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.drawIndexedIndirect(buffer000, 0);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0001.popDebugGroup()
    texture300.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0020.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    texture003.destroy();
    render_bundle_encoder002.popDebugGroup();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    
    
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    const array5 = new Float32Array([0.75, 0.5, 0.75, 0.25, -1.0, -0.5, -0.75, -0.75, -0.25, -0.25, 0.0, 1.0, 0.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 0.5, 0.5, 0.0, 0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 0.25, -1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.5, -0.25, 1.0, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, -0.25, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, -0.5, 0.5, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.75, -1.0, 0.25, -0.75, 0.25, 0.75, -0.25, -0.25, 0.75, -1.0, -0.25, 1.0, 0.5, -0.75, -0.5, 0.0, -0.25, 1.0, ]);
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder0001.popDebugGroup()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture001.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0031.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    compute_pass_encoder4001.insertDebugMarker("marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array6 = new Float32Array([-1.0, 0.25, -0.75, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.75, 0.0, 1.0, -1.0, -1.0, -0.25, -0.25, 0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.75, -1.0, 0.75, -0.25, 0.75, 0.0, -0.75, 0.75, 0.0, 0.0, 1.0, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.25, -1.0, -0.25, -0.25, -1.0, 1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 0.0, 0.25, -0.5, -0.75, -1.0, -0.25, -0.5, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.75, 1.0, ]);
    
    render_bundle_encoder000.finish();
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.pushErrorScope("internal");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.destroy();
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_bundle_encoder000.drawIndirect(buffer005, 0);
    texture003.destroy();
    device60.pushErrorScope("internal");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture007.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0031.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    buffer0011.destroy()
    compute_pass_encoder0030.popDebugGroup()
    
    
    render_bundle_encoder002.setVertexBuffer(0, buffer007);
    command_encoder001.copyBufferToBuffer(
        buffer008,
        0,
        buffer006,
        0,
        400
    );
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder002.drawIndirect(buffer007, 0);
    compute_pass_encoder0001.popDebugGroup()
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture301.destroy();
    
    
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0031.popDebugGroup()
    device10.pushErrorScope("validation");
    
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer102.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder002.drawIndirect(buffer007, 0);
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture005
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    compute_pass_encoder0001.insertDebugMarker("marker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    
    command_encoder000.clearBuffer(buffer005);
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    buffer0010.destroy()
    
    const array7 = new Float32Array([0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 0.75, 0.5, 0.5, 0.75, -0.25, 0.25, 0.25, -0.75, 1.0, -0.5, -1.0, -0.75, 0.75, 1.0, 1.0, -0.75, -1.0, -0.5, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 0.75, 0.75, 1.0, -1.0, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, 0.5, 0.25, -1.0, 0.5, 0.25, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, -0.75, 0.0, -0.25, -1.0, 1.0, -0.25, 0.25, 0.25, -0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, -0.5, 0.0, -1.0, 0.5, -1.0, 0.0, 0.25, 0.25, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    device40.pushErrorScope("out-of-memory");
    const array8 = new Float32Array([-1.0, 0.25, -0.25, -1.0, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, -0.25, 0.25, -1.0, -0.25, 0.5, -1.0, 0.25, 0.5, 0.5, 0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -0.25, 0.0, 0.25, -0.25, 0.0, 0.0, -1.0, 1.0, 0.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.0, -0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.5, 0.25, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, -0.25, 0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.75, -0.25, -0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.0, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    compute_pass_encoder0011.popDebugGroup()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
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
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    compute_pass_encoder0030.popDebugGroup()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    
    render_bundle_encoder002.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_bundle_encoder002.drawIndirect(buffer003, 0);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer005.destroy()
    device00.queue.writeTexture({ texture: texture009 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder0031.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
}