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
    const array0 = new Float32Array([-0.25, -0.25, -0.5, 0.0, -0.5, 1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.25, 1.0, 0.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.75, 0.5, -0.25, -1.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.25, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 0.0, -0.25, -0.25, 0.0, 0.0, 0.0, -0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 0.5, 0.0, 0.75, 0.5, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.25, 0.75, 0.25, 1.0, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, -0.75, 0.75, ]);
    const array1 = new Float32Array([-0.25, 0.0, -0.75, 1.0, -0.5, 0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, -0.5, -0.75, 1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.75, 0.0, -0.75, -1.0, 0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.5, -0.25, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.25, -1.0, 0.25, 0.5, -0.5, 0.75, 1.0, -1.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.25, -0.5, 1.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.75, 1.0, -0.25, -0.5, -0.25, -0.25, -1.0, 0.25, 1.0, 0.75, 0.0, 0.75, 0.5, ]);
    const array2 = new Float32Array([0.0, -0.75, -0.25, 0.75, 1.0, 0.0, 1.0, -0.75, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 0.25, -0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.0, -0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.75, -0.75, -0.25, -1.0, -0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 0.75, -0.75, -0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -0.5, 0.75, 0.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.0, 0.5, 1.0, 1.0, 0.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.queue.submit([]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device30.pushErrorScope("out-of-memory");
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
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    buffer200.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, -0.5, -0.5, 0.75, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 1.0, 0.5, 0.5, 0.25, 0.25, -0.5, -0.75, -0.5, -1.0, 0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, 0.0, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, -1.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.0, 0.5, -0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 0.5, 0.75, -1.0, 0.0, -0.25, 0.5, 0.0, 0.75, -0.75, -0.5, -0.75, -0.75, 0.75, -0.5, 0.0, -0.75, 0.0, 0.5, -0.5, 0.25, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 0.5, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query200.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query200.destroy()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    device00.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.pushErrorScope("validation");
    
    const command_buffer200 = command_encoder200.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer202.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    texture200.destroy();
    
    query200.destroy()
    compute_pass_encoder3000.popDebugGroup()
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture100.destroy();
    const command_buffer201 = command_encoder201.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    texture201.destroy();
    const array4 = new Float32Array([0.0, 1.0, -0.75, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 0.5, 0.75, 1.0, 0.5, 0.75, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, -0.75, -0.25, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 0.75, 1.0, -1.0, 0.75, -0.75, -0.25, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.25, 0.75, -1.0, -0.5, 0.75, -0.5, 0.5, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 1.0, -0.75, ]);
    buffer101.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    device20.queue.submit([command_buffer201, ]);
    query100.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    command_encoder102.popDebugGroup()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.popDebugGroup()
    
    
    device30.destroy();
    device10.pushErrorScope("validation");
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer204.destroy()
    query202.destroy()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.submit([command_buffer101, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array5 = new Float32Array([0.5, -0.25, -1.0, 0.75, 0.0, -0.5, 0.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.5, 1.0, 0.75, -0.5, -0.25, 0.0, 1.0, 1.0, -0.75, -0.75, -0.5, -0.75, -0.25, -0.5, 0.0, -0.25, -1.0, 0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -0.75, 0.75, 1.0, 1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.5, 1.0, 0.5, -1.0, -0.5, 1.0, 0.0, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, 0.75, 0.0, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.5, -1.0, -0.75, 0.75, -0.25, -0.5, -0.25, -0.25, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    texture202.destroy();
    const array6 = new Float32Array([-0.5, 1.0, 0.25, -0.75, -1.0, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, -0.75, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, 1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -0.25, 0.25, 0.0, -0.75, 0.5, 0.75, 0.25, 0.0, -0.5, 0.0, 0.0, -0.25, 0.75, -0.5, 0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -0.75, 0.0, -0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.0, 1.0, -1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 0.5, 0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 0.5, -1.0, 0.5, 0.0, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query200.destroy()
    
    buffer201.destroy()
    compute_pass_encoder1000.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query300.destroy()
    device10.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    device20.destroy();
    query200.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    query100.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array7 = new Float32Array([1.0, 0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 1.0, -0.75, 0.75, 0.75, 0.0, 0.0, 0.5, 0.5, 0.75, -1.0, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 0.5, 0.5, 0.25, 0.5, -0.25, 1.0, 0.75, 0.5, -0.5, 0.25, 0.25, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.25, 0.75, -0.75, 0.25, 1.0, 0.75, -0.25, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 0.75, -0.5, -0.25, 1.0, 0.5, 0.0, -0.5, 1.0, -1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 1.0, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.75, -0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 1.0, -0.5, -0.75, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    device40.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer400.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array8 = new Float32Array([0.5, -1.0, 0.75, -0.25, 1.0, 1.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -0.25, 0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.25, -0.75, -0.5, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, -0.75, 1.0, 1.0, 0.75, -0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.75, -0.25, -0.75, 0.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, -1.0, 0.75, -1.0, 0.75, 0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 1.0, -0.5, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, ]);
    
    device50.pushErrorScope("internal");
    query500.destroy()
    texture000.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query400.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query501.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([-0.75, -0.5, 0.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.75, -0.75, -0.75, -1.0, -0.5, 0.0, -0.75, 1.0, -1.0, 0.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, 0.0, -0.75, -1.0, -0.25, 0.0, 0.25, 1.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.0, -1.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -0.75, -0.25, 0.0, 0.25, 1.0, -0.25, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, -0.5, -1.0, 0.75, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, 1.0, 0.5, 1.0, 0.0, -0.75, -0.25, -0.25, 0.0, -0.25, -0.25, 0.5, 0.5, -0.5, -0.5, ]);
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device50.queue.submit([]);
    query400.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder500.popDebugGroup();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    texture203.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device50.pushErrorScope("internal");
    const array10 = new Float32Array([0.25, -0.25, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.5, -1.0, -0.5, -0.75, 1.0, 0.75, -0.5, -1.0, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.5, 0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 0.25, 0.25, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.5, 0.0, 0.75, 0.5, -0.25, 0.5, 0.25, 0.0, 0.75, 0.25, 0.5, -0.5, 0.0, 0.5, -1.0, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -1.0, -1.0, -0.5, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, -0.75, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, -0.25, -0.25, 0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 0.5, -0.25, 0.25, 0.0, -0.75, -1.0, 0.25, 0.0, 0.5, 0.5, ]);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    query500.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder503.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder401.popDebugGroup();
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    command_encoder401.pushDebugGroup("mygroupmarker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    command_encoder403.pushDebugGroup("mygroupmarker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query600.destroy()
    
    texture401.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    texture500.destroy();
    command_encoder402.popDebugGroup()
    
    query401.destroy()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder401.popDebugGroup()
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    const array11 = new Float32Array([-0.5, -0.5, 0.0, 1.0, -0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -0.5, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, -1.0, 0.5, -0.75, 0.75, 1.0, 1.0, 0.75, 0.25, 0.75, 1.0, -0.25, 0.25, 1.0, -0.25, 0.5, -0.25, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.5, -0.25, -0.5, -1.0, -0.75, -0.5, 0.0, 0.25, 0.25, 0.25, 0.25, 0.0, 0.75, 1.0, -0.5, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, 0.5, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, -0.25, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, 1.0, 0.75, 0.0, 0.75, 1.0, -0.5, 1.0, -0.5, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array12 = new Float32Array([1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 0.5, 0.0, -0.25, 0.0, 0.0, 1.0, -1.0, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, -0.25, 0.75, -0.5, -1.0, 0.5, -1.0, -1.0, -0.5, -0.25, -1.0, -1.0, -1.0, 1.0, 0.25, -1.0, 0.75, -1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, -0.75, 0.75, 0.5, 0.0, -1.0, 1.0, 1.0, -0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.25, 1.0, -1.0, 0.25, 0.5, 0.75, 0.5, -1.0, -0.5, 0.75, 0.25, 0.5, -0.75, ]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    
    render_bundle_encoder503.pushDebugGroup("group_marker");
    
    const command_buffer401 = command_encoder401.finish();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer400 = command_encoder400.finish();
    
    query502.destroy()
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    buffer401.destroy()
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    
    
    texture501.destroy();
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder500.popDebugGroup();
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    render_bundle_encoder503.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    texture502.destroy();
    
    device50.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const array13 = new Float32Array([0.5, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 0.25, -0.75, -0.25, 1.0, -0.75, -0.25, -0.25, 0.25, 1.0, 0.75, 0.5, 0.25, -1.0, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, 0.25, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, 1.0, -0.75, 1.0, 0.5, 0.0, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, 0.0, -0.25, 0.0, -1.0, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, 1.0, 0.5, -0.75, 0.75, 1.0, -0.25, 0.0, -0.5, 0.5, 0.5, -0.75, 0.75, 1.0, 0.25, 0.0, -0.75, -0.75, 0.75, ]);
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    device50.pushErrorScope("out-of-memory");
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder402.clearBuffer(buffer400);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    texture400.destroy();
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    device40.queue.submit([command_buffer400, ]);
    render_bundle_encoder402.insertDebugMarker("marker");
    texture402.destroy();
    
    const array14 = new Float32Array([0.5, 0.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.0, 1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, 0.25, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, -0.25, -0.75, 0.5, -0.25, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -1.0, -0.25, 0.5, 0.25, 0.0, -1.0, 0.75, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, 0.0, -0.75, 0.5, 0.5, -0.25, 0.25, 0.25, 0.0, 0.0, 0.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.0, -0.75, 1.0, 0.5, -0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -1.0, -0.25, -1.0, ]);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer404 = command_encoder404.finish();
    query200.destroy()
    render_bundle_encoder401.popDebugGroup();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture405.destroy();
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    command_encoder700.insertDebugMarker("mymarker");
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array14, 0, array14.length);
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const compute_pass_encoder4031 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4031" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const array15 = new Float32Array([-1.0, 0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.75, 0.0, 0.25, -0.75, -0.75, -0.25, 0.25, -0.5, 0.0, -0.25, -1.0, 0.25, -0.75, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, -0.75, -0.75, -1.0, 0.0, 0.0, -0.5, 0.0, 0.5, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, 1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -1.0, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, -0.5, 0.0, -0.75, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.5, 0.75, -0.25, 0.75, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, -0.5, 0.5, 0.0, ]);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder700.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    query401.destroy()
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    texture401.destroy();
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    buffer402.destroy()
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module409,
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
            module: shader_module409,
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder4030.popDebugGroup()
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    texture403.destroy();
    device40.queue.writeBuffer(buffer401, 0, array13, 0, array13.length);
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    command_encoder402.copyTextureToTexture(
        {
            texture: texture404
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    query203.destroy()
    
    device40.queue.writeBuffer(buffer403, 0, array13, 0, array13.length);
    compute_pass_encoder4031.pushDebugGroup("group_marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    texture600.destroy();
    device80.destroy();
    compute_pass_encoder4030.popDebugGroup()
    render_bundle_encoder401.popDebugGroup();
    device40.queue.writeBuffer(buffer403, 0, array9, 0, array9.length);
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    device40.queue.submit([command_buffer401, ]);
    command_encoder405.insertDebugMarker("mymarker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder4031.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4031.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    const command_buffer405 = command_encoder405.finish();
}