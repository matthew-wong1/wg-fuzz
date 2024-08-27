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
    const array0 = new Float32Array([1.0, 0.5, -0.5, 0.75, 0.0, 0.25, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.5, 0.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, -0.75, 0.5, -0.5, -1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.75, 0.75, 0.5, -0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.5, -1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    const array1 = new Float32Array([-1.0, -1.0, 0.75, 0.0, 0.75, -0.5, -0.75, 0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 1.0, 1.0, -0.75, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, 0.25, -1.0, 0.75, -0.5, 0.75, 0.25, 0.5, -0.5, 0.75, 0.0, -0.25, -0.5, -0.25, 0.0, -1.0, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, 0.75, -0.75, -0.25, 0.5, -1.0, 0.0, -1.0, -0.75, -0.5, -0.75, -1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, -0.25, 0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.0, 0.0, 0.5, -0.5, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, -1.0, -0.5, ]);
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const array2 = new Float32Array([-0.75, 0.5, -0.5, 0.75, -0.75, -0.25, 0.5, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, -0.5, 0.5, -0.75, 1.0, 0.5, 1.0, 1.0, 0.75, -0.5, -0.5, -0.75, -0.75, 0.0, 1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 0.0, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 0.5, -0.5, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, -1.0, 0.75, -1.0, 1.0, 1.0, -0.75, 1.0, 1.0, 0.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -1.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 0.75, 0.0, ]);
    
    
    const array3 = new Float32Array([0.0, 0.25, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.0, -0.75, -0.5, 0.75, -0.75, 1.0, -1.0, 0.0, -0.25, 0.25, -0.75, 1.0, 0.5, -1.0, -1.0, -0.75, 1.0, -0.5, 0.5, -0.25, 0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.75, 1.0, 0.75, 1.0, -0.25, -1.0, -0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.75, 0.0, -0.25, -0.5, -0.75, -0.75, -1.0, 1.0, 0.25, 0.75, 0.75, -0.75, 0.0, 0.0, 0.75, -0.25, 0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const array4 = new Float32Array([-0.5, 0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, -1.0, -0.25, 0.5, -0.75, -1.0, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.25, 0.25, 0.25, -0.25, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.5, 0.25, 0.0, 0.0, -0.5, -0.75, 0.5, 0.75, 0.75, 0.75, -0.25, 0.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -0.25, 0.25, -0.25, 0.5, -1.0, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, 0.75, -1.0, 1.0, 1.0, 0.75, 1.0, 1.0, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.25, -0.75, 0.25, 0.25, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    texture101.destroy();
    device10.queue.submit([]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    texture100.destroy();
    
    
    render_bundle_encoder100.popDebugGroup();
    device10.pushErrorScope("internal");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer101.destroy()
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.25, -0.5, 1.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.25, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, -1.0, 0.25, -0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.5, 0.0, -0.25, -0.75, -0.75, -0.25, -0.75, 1.0, 0.0, 0.25, 1.0, 0.25, -1.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, -0.5, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, ]);
    
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    
    device20.pushErrorScope("validation");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    query103.destroy()
    
    
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    
    
    
    
    query103.destroy()
    texture103.destroy();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture104.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture105 = device10.createTexture({
        label: "texture105",
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
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    buffer102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    query201.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
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
        occlusionQuerySet: query102
    });
    query102.destroy()
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline100);
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
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture105.destroy();
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query100.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    query104.destroy()
    
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
    
    
    
    query103.destroy()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    render_bundle_encoder101.popDebugGroup();
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query200.destroy()
    
    device20.queue.submit([]);
    query102.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    query201.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    texture200.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    query201.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1001.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-1.0, 0.75, -0.75, 0.75, 0.0, -0.75, 1.0, 0.25, -0.25, -1.0, 0.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, 1.0, 1.0, -1.0, -1.0, 0.0, 0.0, -0.75, -1.0, 0.25, -0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, 1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, 0.25, 0.75, 1.0, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, -1.0, 0.25, -0.75, -0.5, -0.5, 0.5, 1.0, -0.75, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, 0.25, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, 0.25, 0.5, 1.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, ]);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query104.destroy()
    render_pass_encoder1000.setStencilReference(1);
    query201.destroy()
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
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder1000.setStencilReference(1);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    
    
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    query200.destroy()
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    render_bundle_encoder102.popDebugGroup();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    texture202.destroy();
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder1001.setStencilReference(1);
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder201.copyTextureToTexture(
        {
            texture: texture201
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture107.destroy();
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
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    texture102.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
        0
    )
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    command_encoder102.copyTextureToTexture(
        {
            texture: texture106
        },
        {
            texture: texture105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1000.setStencilReference(1);
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
        occlusionQuerySet: query103
    });
    query100.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1020.setPipeline(render_pipeline101);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    buffer100.destroy()
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
        occlusionQuerySet: query104
    });
    buffer107.destroy()
    buffer201.destroy()
    
    query201.destroy()
    
    render_pass_encoder1011.setPipeline(render_pipeline101);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    query200.destroy()
    
    render_pass_encoder1011.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    buffer105.destroy()
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1001.setStencilReference(1);
    query203.destroy()
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture202.destroy();
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    query104.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query105.destroy()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1080,
            },
        ],
        occlusionQuerySet: query103
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query105.destroy()
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.insertDebugMarker("marker");
    query103.destroy()
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder102.copyTextureToTexture(
        {
            texture: texture108
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
    
    
    render_pass_encoder1001.insertDebugMarker("marker");
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query200.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
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
    
    render_pass_encoder2011.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
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
    query100.destroy()
    buffer109.destroy()
    
    query102.destroy()
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
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    query203.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer104.destroy()
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    buffer106.destroy()
    
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    render_pass_encoder2011.beginOcclusionQuery(0)
    render_pass_encoder1010.pushDebugGroup("group_marker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    
    buffer204.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query200.destroy()
    
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder2011.setStencilReference(1);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer108
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
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.setViewport(0, 0, texture108.width / 2, texture108.height / 2, 0, 1);
    render_bundle_encoder101.drawIndirect(buffer104, 0);
    buffer103.destroy()
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer202.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    
    buffer1011.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query104.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder2001.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    render_pass_encoder1031.setPipeline(render_pipeline104);
    render_pass_encoder1002.setPipeline(render_pipeline100);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1011.popDebugGroup();
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder2001.setVertexBuffer(0, buffer206);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2001.end();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    render_pass_encoder2011.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder1010.setVertexBuffer(0, buffer1017);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
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
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group107);
    render_pass_encoder1000.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2010.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer2011);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    command_encoder102.popDebugGroup()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder1031.setVertexBuffer(0, buffer1022);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer1023);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer109);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    const command_buffer102 = command_encoder102.finish();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1002.setBindGroup(0, bind_group109);
    render_pass_encoder2010.end();
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1011.setVertexBuffer(0, buffer108);
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
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
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1030.end();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1002.setVertexBuffer(0, buffer1010);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1031.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder2000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1022, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1002.drawIndexedIndirect(buffer1028, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder2011.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1002.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    command_encoder000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2011.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2011.popDebugGroup();
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder1001.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2010.end();
}