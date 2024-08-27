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
    const array0 = new Float32Array([-0.75, 0.5, 1.0, -0.25, -0.75, 1.0, -0.25, -0.5, -1.0, -0.75, -0.75, -0.5, -1.0, -1.0, 0.75, 0.25, -1.0, 0.0, 0.75, -0.5, 1.0, 0.5, 0.0, 0.0, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, -0.25, 0.5, 0.0, 0.75, 1.0, 1.0, 0.0, -0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, -1.0, 0.25, 0.75, -0.5, 0.5, 0.75, -1.0, 0.25, 1.0, -0.25, 0.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 0.5, -0.75, -0.75, -1.0, 0.25, -0.75, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array1 = new Float32Array([0.5, 0.5, 0.25, -0.25, -0.5, -0.25, 0.5, 1.0, -0.75, -0.5, -0.5, 0.0, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 0.75, -0.75, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, -0.25, 0.5, 0.5, 1.0, 0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.0, -0.5, -0.25, 0.25, 0.25, -0.5, 0.75, 0.25, -0.5, 1.0, -1.0, -0.25, 0.75, 0.75, -1.0, 0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.25, -1.0, -1.0, -1.0, 0.0, 0.0, 0.75, 1.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.5, -0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture100.destroy();
    
    device20.pushErrorScope("validation");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    command_encoder200.insertDebugMarker("mymarker");
    texture200.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
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
    const command_buffer200 = command_encoder200.finish();
    
    device20.queue.submit([command_buffer200, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array2 = new Float32Array([0.0, -1.0, 0.5, 0.0, -0.5, 0.25, 0.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 0.0, 0.5, -0.5, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 0.75, -0.25, 0.0, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.5, 0.0, 0.75, 0.75, -0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, -0.75, 0.0, 0.25, 0.75, -0.25, 0.25, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, 0.25, 0.75, 0.75, -1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, -0.5, -0.5, 0.5, -1.0, -1.0, -1.0, 0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query001.destroy()
    device00.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    device00.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    query001.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.pushErrorScope("out-of-memory");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer300.destroy()
    query002.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query002.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query101.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const array3 = new Float32Array([-1.0, 0.0, -0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.5, -0.75, -0.75, 0.0, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, -0.75, -1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 0.5, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.25, 0.5, 0.25, 0.0, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, -0.5, -0.5, -0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, 0.0, 0.5, -0.5, 0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.25, 0.25, ]);
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    texture300.destroy();
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const array4 = new Float32Array([-1.0, 0.25, 1.0, -0.25, 0.25, -0.75, -0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 1.0, -0.75, -0.25, -1.0, -0.75, 0.75, -0.5, 0.25, -0.25, -0.25, -0.75, 0.0, 0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 1.0, 0.25, 0.75, 0.25, 1.0, -0.5, 0.25, 0.75, 0.75, -0.75, 0.25, 0.75, -1.0, -1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, 0.75, 1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.25, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, -1.0, -1.0, ]);
    render_bundle_encoder001.popDebugGroup();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const array5 = new Float32Array([0.25, -0.75, 1.0, 0.0, -1.0, 0.0, -1.0, -0.75, -0.5, -0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -0.5, 1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 1.0, 0.5, -0.5, -0.75, 1.0, 0.5, -0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 0.75, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.5, 0.25, 0.0, -0.75, -0.5, -0.5, -1.0, -0.25, 0.5, 0.5, -0.75, 1.0, -0.75, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 1.0, -0.75, 0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 1.0, 0.75, -0.25, -0.75, 0.75, -0.5, 0.0, -0.25, -0.25, -0.75, 1.0, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -0.75, 0.25, 1.0, 0.25, -0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query201.destroy()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
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
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    
    
    
    
    query000.destroy()
    render_pass_encoder2010.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    query003.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setPipeline(render_pipeline205);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder002.popDebugGroup();
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
    
    query202.destroy()
    query201.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query001.destroy()
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
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
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    buffer201.destroy()
    
    buffer203.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder2011.executeBundles([])
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    query300.destroy()
    const command_buffer300 = command_encoder300.finish();
    command_encoder100.clearBuffer(buffer103);
    device20.pushErrorScope("internal");
    
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer202.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    buffer200.destroy()
    
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture102.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    query300.destroy()
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    render_pass_encoder2011.executeBundles([])
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    render_pass_encoder2011.popDebugGroup();
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    buffer205.destroy()
    compute_pass_encoder1000.popDebugGroup()
    
    query002.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder201.setPipeline(render_pipeline203);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_pass_encoder2011.setPipeline(render_pipeline204);
    query003.destroy()
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture001.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group200);
    query100.destroy()
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.insertDebugMarker("mymarker");
    query001.destroy()
    const command_buffer400 = command_encoder400.finish();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder200.setPipeline(render_pipeline204);
    device20.queue.writeBuffer(buffer208, 0, array4, 0, array4.length);
    
    render_pass_encoder2010.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer101.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2020.setPipeline(render_pipeline204);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture001.destroy();
    
    texture400.destroy();
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    query003.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query101
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    texture202.destroy();
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    query201.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    texture000.destroy();
    texture103.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array6 = new Float32Array([-1.0, -0.75, 0.75, -0.75, 1.0, -0.5, -0.75, 0.25, 0.75, 0.25, 0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.5, 1.0, 0.5, 0.0, -0.75, -0.25, 0.0, -0.75, 0.25, -0.5, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, -0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 0.25, 0.5, 1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.25, 1.0, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, 0.25, 1.0, -1.0, -0.75, -0.25, 0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 0.25, -1.0, -1.0, 0.0, 0.5, 0.75, -1.0, 0.75, -0.5, 0.25, 0.0, -0.5, 0.25, 0.5, 0.25, 0.0, -0.25, -0.75, 0.75, 0.5, ]);
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    query400.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    query000.destroy()
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const array7 = new Float32Array([-1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 1.0, -0.75, -0.5, -0.5, -0.25, -0.75, -0.5, 1.0, 1.0, -1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.0, -0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -1.0, -0.25, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, 0.0, 0.5, 0.75, 0.0, -0.25, -0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 0.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.5, -0.5, -0.25, 0.75, -0.5, -0.5, 1.0, -0.5, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    buffer104.destroy()
    device40.pushErrorScope("validation");
    buffer2010.destroy()
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2021.setPipeline(render_pipeline201);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
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
        occlusionQuerySet: query001
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1011.popDebugGroup();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    device20.queue.writeBuffer(buffer2012, 0, array7, 0, array7.length);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder1011.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    const array8 = new Float32Array([-1.0, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.25, -0.25, -0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 0.25, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, 0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.75, -0.75, -1.0, -0.25, -0.75, -0.5, 0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -1.0, -0.5, 0.0, 0.75, 0.75, -0.5, 0.75, -0.75, 0.25, -0.5, 0.5, -1.0, -0.5, -0.75, 0.5, 1.0, 1.0, -1.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.5, -1.0, -0.5, -1.0, -0.5, -1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.25, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -1.0, 0.75, -0.5, -0.75, -1.0, ]);
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    
    
    query202.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer2011.destroy()
    device20.queue.writeBuffer(buffer206, 0, array8, 0, array8.length);
    render_pass_encoder2011.setVertexBuffer(0, buffer206);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer2012.destroy()
    render_pass_encoder0000.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0000.setPipeline(render_pipeline000);
    command_encoder401.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([]);
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder2020.end();
    command_encoder402.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2011.popDebugGroup();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.end();
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    device40.queue.submit([command_buffer400, ]);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
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
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group203);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    render_pass_encoder2021.setVertexBuffer(0, buffer201);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.setVertexBuffer(0, buffer105);
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    device20.queue.submit([]);
    render_pass_encoder1010.setVertexBuffer(0, buffer1013);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.end();
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2011.end();
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder2011.end();
    command_encoder101.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer1015);
    const command_buffer101 = command_encoder101.finish();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.end();
    render_pass_encoder1000.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0000.setVertexBuffer(0, buffer002);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1011.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.end();
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder2021.end();
    device10.queue.submit([]);
    render_pass_encoder2021.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2021.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    device00.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2011.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexed(3);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
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
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2021.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2011.popDebugGroup();
}