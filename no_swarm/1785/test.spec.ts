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
    
    const array0 = new Float32Array([-0.5, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, 1.0, -0.75, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.25, -1.0, 0.75, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 1.0, -0.25, 1.0, -0.5, 1.0, -0.25, 0.0, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, -0.25, 0.5, -0.75, -0.25, -0.75, 0.75, -0.75, 0.25, 0.0, 0.0, -1.0, -0.25, 0.25, 0.0, 1.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -0.5, -0.25, -0.75, -0.75, 0.5, 0.0, -1.0, -0.25, -0.25, ]);
    const array1 = new Float32Array([0.75, -0.75, 0.5, -0.5, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, -0.75, -0.75, 0.75, 0.25, 0.25, -0.75, 0.0, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -1.0, -0.25, -0.75, 1.0, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.75, -0.75, 0.0, -0.25, 1.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, 0.5, 0.25, -1.0, -0.25, 0.5, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 1.0, -0.5, 0.0, 0.25, 1.0, 0.5, -0.25, -1.0, 0.0, ]);
    
    const array2 = new Float32Array([-0.75, -1.0, -0.5, 1.0, -0.75, 0.0, 0.5, -1.0, 0.0, 0.5, 0.75, -0.5, -0.75, 0.5, 0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 1.0, 1.0, 0.75, -1.0, 0.5, 0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, -0.5, -0.75, 0.0, 0.25, 0.75, -1.0, -0.5, 0.0, 0.25, 0.25, 1.0, 0.0, 0.75, 0.0, -0.25, 0.75, -1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 1.0, -0.25, -1.0, 0.75, 0.25, 0.5, 0.75, 0.25, 1.0, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, -0.25, 0.25, -1.0, -0.25, -0.25, -1.0, 0.75, 0.25, 0.5, -0.5, -0.5, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array3 = new Float32Array([0.0, 0.75, -0.5, 0.5, -1.0, -0.25, -1.0, 0.25, 1.0, -0.75, -0.75, 0.25, 0.5, 0.25, -0.5, 0.25, 0.25, 0.75, 0.75, 1.0, -0.5, 0.0, -0.5, 1.0, -0.25, 1.0, -0.75, 0.75, 0.25, -0.25, 1.0, -0.75, -0.25, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.25, 0.5, -0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 0.5, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.0, 0.25, 0.75, 0.5, 0.75, -0.5, -0.75, 0.75, 0.25, -0.75, 0.0, 0.75, 0.5, 0.25, 0.25, -1.0, 0.0, -1.0, 0.25, 0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, 0.25, 0.0, 0.75, 1.0, 0.5, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([-0.25, -0.5, -0.5, 0.25, 1.0, -0.75, -0.5, -0.5, -0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -1.0, -0.25, -0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.0, 0.25, 0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, -1.0, -0.75, -0.75, 0.0, -1.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.5, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, 0.75, 0.0, -0.25, -0.5, -0.75, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.5, -0.75, -0.5, 0.75, 1.0, 0.0, 0.75, ]);
    
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer001.destroy()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.clearBuffer(buffer001);
    texture000.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query001.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.pushErrorScope("out-of-memory");
    const command_buffer001 = command_encoder001.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer001, ]);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    buffer003.destroy()
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder004.pushDebugGroup("mygroupmarker")
    
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
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    
    
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    texture000.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyTextureToTexture(
        {
            texture: texture001
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
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0040.popDebugGroup()
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    buffer002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture002.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const array5 = new Float32Array([-0.75, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 0.75, -0.75, 0.75, 0.25, 0.75, 1.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, -0.25, -0.25, 1.0, 0.75, -0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 0.25, -1.0, 0.0, 0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.5, 0.5, 0.25, -0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 1.0, 1.0, -0.75, 0.0, -0.5, -1.0, -0.25, -0.5, 0.5, 0.5, -0.5, -0.5, -0.25, 0.25, 0.25, -0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.75, 1.0, 1.0, -0.25, 0.5, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, 1.0, 0.75, 0.0, 0.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, ]);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.popDebugGroup()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.submit([command_buffer000, ]);
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    query002.destroy()
    const array6 = new Float32Array([-0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0, -0.75, -1.0, 1.0, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.25, 1.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, -0.25, -0.25, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    texture003.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture002.destroy();
    compute_pass_encoder0020.popDebugGroup()
    
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
        occlusionQuerySet: query000
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    render_pass_encoder0020.beginOcclusionQuery(0)
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture003.destroy();
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device20.pushErrorScope("internal");
    query002.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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

    render_pass_encoder0050.setBindGroup(0, bind_group001);
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    texture004.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer005.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.submit([]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query003
    });
    command_encoder005.insertDebugMarker("mymarker");
    
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
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture103.destroy();
    
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    query100.destroy()
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0050.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query003.destroy()
    render_bundle_encoder300.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query100.destroy()
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0050.setStencilReference(1);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture300.destroy();
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    device40.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0031.insertDebugMarker("marker")
    texture301.destroy();
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    texture104.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    render_pass_encoder0021.executeBundles([])
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture100.destroy();
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer008.destroy()
    
    device10.destroy();
    
    texture004.destroy();
    render_pass_encoder0050.insertDebugMarker("marker");
    buffer003.destroy()
    buffer007.destroy()
    
    
    
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    texture005.destroy();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    render_pass_encoder0021.setPipeline(render_pipeline003);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0020.draw(3);
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
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    render_pass_encoder0050.setVertexBuffer(0, buffer002);
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    render_pass_encoder0030.setStencilReference(1);
    query004.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder002.insertDebugMarker("mymarker");
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
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
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
    render_pass_encoder0031.setPipeline(render_pipeline001);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0040.popDebugGroup();
    buffer100.destroy()
    texture300.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    buffer004.destroy()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0021.beginOcclusionQuery(0)
    query001.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0021.setStencilReference(1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0050.setPipeline(compute_pipeline000);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder302.popDebugGroup();
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0050.draw(3);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query100.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const command_buffer005 = command_encoder005.finish();
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    texture002.destroy();
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture002.destroy();
    
    buffer0010.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_pass_encoder0031.beginOcclusionQuery(1)
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    render_pass_encoder0021.endOcclusionQuery()
    query001.destroy()
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    render_pass_encoder0020.endOcclusionQuery()
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder002.setPipeline(render_pipeline004);
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array7 = new Float32Array([0.25, -0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.0, 1.0, -0.25, 0.75, -0.25, -0.75, 0.5, -0.5, -0.75, 0.75, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, 0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.25, 1.0, -1.0, 0.75, -0.25, -1.0, 1.0, 0.25, ]);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group004);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder0031.setPipeline(compute_pipeline000);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer0012.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    compute_pass_encoder0040.setPipeline(compute_pipeline001);
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    render_bundle_encoder001.setVertexBuffer(0, buffer008);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setPipeline(render_pipeline200);
    compute_pass_encoder0030.setPipeline(compute_pipeline003);
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0031.setVertexBuffer(0, buffer0016);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.drawIndirect(buffer003, 0);
    compute_pass_encoder2000.popDebugGroup()
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    render_pass_encoder0021.setVertexBuffer(0, buffer0013);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0031.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer004 = command_encoder004.finish();
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    render_pass_encoder0040.setVertexBuffer(0, buffer007);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group009);
    render_pass_encoder0031.draw(3);
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group200);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    render_pass_encoder0030.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0010);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setVertexBuffer(0, buffer002);
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2001.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0029, 0);
    compute_pass_encoder0031.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([]);
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0040.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder0040.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0050.end();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.draw(3);
    command_encoder002.popDebugGroup()
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0011);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0032, 0);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0030.end();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.end();
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    device30.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2000.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    command_encoder003.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, ]);
    compute_pass_encoder0031.dispatchWorkgroups(100);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0014);
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0040.end();
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0015);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.end();
    compute_pass_encoder0050.popDebugGroup()
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
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    device30.queue.submit([]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0012, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder2000.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0029, "uint16");
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0031.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
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
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    compute_pass_encoder0031.popDebugGroup()
    compute_pass_encoder0031.end();
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
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
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0018);
    render_pass_encoder0040.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer0022, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0019);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer0045, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder2001.draw(3);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0020);
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0050.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder0050.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2000.drawIndexed(3);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0021);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0040.popDebugGroup()
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0022);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.drawIndirect(buffer0055, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.draw(3);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0023);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0025, 0);
    device30.queue.submit([]);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0024);
    render_pass_encoder0031.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder0030.end();
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0025);
    render_pass_encoder0050.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0055, 0);
    compute_pass_encoder0031.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0026);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0061, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    device20.queue.submit([]);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0073, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0021.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    compute_pass_encoder0031.end();
    compute_pass_encoder0031.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer0052, "uint16");
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
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer0029, 0);
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
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0028);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0046, 0);
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
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0029);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0029, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0030.end();
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
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group0030);
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0050.drawIndirect(buffer0063, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0082, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0073, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0021.drawIndirect(buffer0068, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0031.drawIndirect(buffer0073, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    render_pass_encoder2000.draw(3);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
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
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0031);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
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
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0032);
    render_pass_encoder0050.end();
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0089, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer0012, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0031.end();
    compute_pass_encoder0031.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0082, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0090, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0083, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0031.setIndexBuffer(buffer0071, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexed(3);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0092, 0);
}