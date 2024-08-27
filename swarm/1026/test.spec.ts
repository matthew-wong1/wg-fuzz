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
    const array0 = new Float32Array([0.0, -1.0, -0.5, -0.5, -0.25, -0.75, 1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.75, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 0.25, 0.5, -1.0, 0.0, 0.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, -0.75, 1.0, -1.0, 0.0, 0.25, -1.0, 0.75, -0.75, 1.0, -0.5, -0.25, 1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -0.75, 0.0, -0.75, 0.0, 0.25, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.5, 0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.25, 1.0, 0.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const array1 = new Float32Array([1.0, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, 1.0, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.25, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 0.25, -1.0, 0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.0, -0.5, -0.25, -1.0, -0.75, 0.0, -0.5, 0.25, 0.5, 0.75, 1.0, 0.25, -0.5, 0.5, -0.5, 0.25, 0.25, -0.25, 0.5, 1.0, -0.75, ]);
    const array2 = new Float32Array([0.0, -0.25, -0.5, 0.25, 0.0, 1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.75, -0.5, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.25, 0.0, 0.75, 0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -0.75, -1.0, 0.25, -1.0, 0.0, 0.5, 0.5, 1.0, 0.0, -0.75, 0.0, 1.0, 0.5, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.0, 1.0, -0.25, -1.0, 1.0, 0.25, 1.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.75, -0.25, -0.25, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, -0.75, 1.0, -0.5, 0.25, 0.75, -0.5, -0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("out-of-memory");
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array3 = new Float32Array([0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -0.25, 0.0, 1.0, -0.25, 0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.5, 0.75, 0.25, 0.0, -0.5, -0.5, -1.0, -1.0, -1.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.0, -0.25, 0.25, 0.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -0.75, -1.0, 0.5, 0.5, -0.25, 0.0, -0.25, -0.25, 0.5, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.5, 0.25, 0.75, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 0.75, -0.75, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder100.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer100.destroy()
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_buffer102 = command_encoder102.finish();
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    device10.destroy();
    const array4 = new Float32Array([0.75, -0.25, 1.0, 0.0, -0.25, 1.0, 0.25, 0.0, 0.25, -0.75, 1.0, -0.75, 0.25, 0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 1.0, 0.0, 0.0, 0.75, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, 0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, -0.75, -0.5, 0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 1.0, -1.0, 0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 1.0, 0.75, -0.5, -0.5, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.0, 0.75, 0.5, 0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 1.0, -1.0, ]);
    
    const array5 = new Float32Array([-1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.5, 0.75, -0.25, 0.75, -1.0, 0.25, 0.25, -1.0, -0.75, 0.75, 1.0, -0.75, 0.75, -0.5, -0.75, -0.5, 0.5, 1.0, 0.75, 0.0, -0.25, -0.75, 0.25, -1.0, 0.75, 0.25, 0.75, 1.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.75, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 0.5, 0.25, 0.5, -0.5, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.75, -0.75, 0.75, -0.25, 0.25, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 0.5, 0.25, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, ]);
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([]);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.5, 0.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.75, 0.5, 0.75, -0.25, -0.5, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 0.5, -0.5, 0.75, -0.25, 0.25, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, 0.75, -0.25, -0.75, 1.0, 0.25, -0.75, 0.25, 1.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, 0.75, 0.75, 0.75, 0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.75, 0.0, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -0.5, -0.75, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.75, 0.75, -0.75, -0.75, -0.5, ]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.insertDebugMarker("mymarker");
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.destroy();
    device40.destroy();
    const array7 = new Float32Array([-0.25, 0.25, 0.5, -0.75, 1.0, 0.5, 0.0, 0.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.25, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, -0.25, -0.5, 0.5, 1.0, 0.5, -0.75, 1.0, 0.0, -0.5, -1.0, 0.5, -1.0, -0.25, 1.0, 0.5, -0.5, -0.5, 0.0, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.5, 0.0, 0.75, 0.75, 0.0, 0.25, -0.5, 0.0, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, -0.75, 0.75, 0.5, -1.0, 0.5, 0.75, 0.25, 1.0, 0.75, 0.5, -0.75, -0.25, 1.0, 0.0, 0.0, 0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -1.0, 0.75, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.25, -1.0, -1.0, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.destroy();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device40.pushErrorScope("out-of-memory");
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array8 = new Float32Array([-1.0, 0.75, 1.0, -1.0, -1.0, 0.5, 1.0, -0.25, -1.0, 1.0, -0.5, -0.5, -0.25, -0.5, 1.0, -0.5, -0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 1.0, -0.25, 0.0, -1.0, 0.25, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, -1.0, -1.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.5, 0.5, 0.75, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, -1.0, -1.0, -0.5, -0.25, 0.75, -0.5, -0.5, 0.5, 0.75, -1.0, -0.75, 1.0, -1.0, 1.0, -0.75, 0.25, -1.0, -0.75, -0.25, 1.0, -1.0, -0.5, 0.0, -1.0, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -0.75, 0.25, -0.5, 0.0, 1.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, -1.0, -0.75, 0.0, 0.5, 0.75, ]);
    device30.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([-0.5, -1.0, 0.25, -0.25, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, -0.5, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.75, 0.0, 0.75, 0.5, 1.0, 1.0, -1.0, 1.0, -0.75, -1.0, -0.75, 0.75, -0.5, -0.75, 0.25, -0.25, -0.25, 0.75, 0.0, 0.25, 1.0, -0.5, 0.25, -1.0, 0.5, -0.5, -0.75, 0.25, -0.25, -0.5, 0.25, 0.0, 0.25, 0.0, 0.0, -0.25, -0.5, -1.0, 0.5, -1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.75, -0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, -0.75, -1.0, -0.75, 1.0, ]);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.pushErrorScope("out-of-memory");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device70.pushErrorScope("out-of-memory");
    
    
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeTexture({ texture: texture603 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder600.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder900.insertDebugMarker("mymarker");
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer800.destroy()
    {
        await buffer801.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer801.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer801.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device50.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_buffer800 = command_encoder800.finish();
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    device80.queue.writeBuffer(buffer801, 0, array5, 0, array5.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    {
        await buffer801.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer801.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer801.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder9000.popDebugGroup()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    const array10 = new Float32Array([-1.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -1.0, -0.25, -0.75, -1.0, 1.0, -0.25, -0.75, 0.25, 1.0, -1.0, -1.0, -0.5, -0.25, -0.5, 0.5, 0.5, -1.0, 0.5, 1.0, -0.75, 1.0, 0.0, 0.0, 0.5, -0.75, 0.0, -0.25, 1.0, -1.0, 0.75, 0.25, 0.0, 0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.0, 1.0, -1.0, 0.25, -1.0, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, -0.75, 0.5, -1.0, 0.75, -1.0, -1.0, 1.0, 0.75, 0.0, -0.25, 0.0, 0.75, 0.5, -0.75, 0.25, -0.75, 0.0, 0.25, -0.75, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, -0.25, ]);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device80.queue.writeBuffer(buffer801, 0, array5, 0, array5.length);
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder800.setPipeline(render_pipeline800);
    render_bundle_encoder602.setPipeline(render_pipeline600);
    
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer801.destroy()
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    buffer603.destroy()
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    command_encoder901.insertDebugMarker("mymarker");
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    buffer900.destroy()
    
    device80.queue.writeBuffer(buffer801, 0, array8, 0, array8.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    buffer600.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device70.queue.submit([]);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const command_buffer901 = command_encoder901.finish();
    
    command_encoder601.copyTextureToBuffer(
        {
            texture: texture601
        },
        {
            buffer: buffer600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    buffer602.destroy()
    render_bundle_encoder601.setPipeline(render_pipeline603);
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.copyTextureToTexture(
        {
            texture: texture601
        },
        {
            texture: texture601
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder600.popDebugGroup();
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer800.destroy()
    const command_buffer801 = command_encoder801.finish();
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    device80.pushErrorScope("internal");
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    
    
    device90.pushErrorScope("internal");
    device60.queue.writeTexture({ texture: texture602 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture603 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    buffer803.destroy()
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group601);
    const command_buffer802 = command_encoder802.finish();
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    compute_pass_encoder7000.popDebugGroup()
    render_bundle_encoder900.setPipeline(render_pipeline901);
    device100.pushErrorScope("out-of-memory");
    
    
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder701.setPipeline(render_pipeline700);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    
    buffer605.destroy()
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group602);
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pass_encoder7011 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7011" });
    compute_pass_encoder9000.insertDebugMarker("marker")
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const command_buffer902 = command_encoder902.finish();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder601.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-0.75, 0.5, -0.5, 0.25, -0.25, -0.75, 1.0, -0.75, 1.0, -0.75, 0.0, 0.5, -1.0, -0.75, 0.0, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, 0.0, 0.75, -1.0, -0.5, 0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, 0.0, -0.75, 0.5, -0.25, -0.25, -0.25, 0.0, -0.25, -1.0, -0.75, 0.25, 0.75, 1.0, -1.0, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.75, 0.5, -0.25, 0.0, 1.0, -0.5, -0.75, 0.0, 0.75, -0.25, -0.75, -1.0, 1.0, -0.25, 0.75, 0.0, -0.75, 0.25, 0.0, 0.75, -1.0, -0.75, -0.25, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, -0.75, ]);
    
    
    
    device90.pushErrorScope("out-of-memory");
    const command_buffer601 = command_encoder601.finish();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const command_buffer701 = command_encoder701.finish();
    
    buffer606.destroy()
    device100.queue.writeTexture({ texture: texture1000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9000.popDebugGroup()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer901,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer902,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group900);
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    buffer604.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    buffer901.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    
    
    
    render_bundle_encoder800.popDebugGroup();
    
    
    render_bundle_encoder702.setPipeline(render_pipeline700);
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device90.queue.writeTexture({ texture: texture901 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder702.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device60.queue.writeBuffer(buffer608, 0, array8, 0, array8.length);
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture603 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device90.queue.writeTexture({ texture: texture901 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    device60.queue.writeTexture({ texture: texture603 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer1000 = command_encoder1000.finish();
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture603 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9000.insertDebugMarker("marker")
    device90.queue.writeTexture({ texture: texture901 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pass_encoder6001 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6001" });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    buffer607.destroy()
    
    command_encoder903.copyTextureToTexture(
        {
            texture: texture901
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device80.queue.submit([]);
    render_bundle_encoder601.popDebugGroup();
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    render_bundle_encoder1000.popDebugGroup();
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    compute_pass_encoder7000.popDebugGroup()
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device80.queue.writeBuffer(buffer801, 0, array11, 0, array11.length);
    device100.queue.submit([command_buffer1000, ]);
    device80.queue.submit([command_buffer801, ]);
    command_encoder600.insertDebugMarker("mymarker");
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    buffer802.destroy()
    
    command_encoder900.copyTextureToBuffer(
        {
            texture: texture902
        },
        {
            buffer: buffer901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7011.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    const command_buffer904 = command_encoder904.finish();
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer903 = command_encoder903.finish();
    const command_buffer803 = command_encoder803.finish();
    device90.queue.submit([command_buffer901, command_buffer902, command_buffer903, command_buffer904, ]);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer600 = command_encoder600.finish();
    device90.queue.submit([]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder7000.popDebugGroup()
    device80.queue.submit([command_buffer800, command_buffer803, ]);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder6000.popDebugGroup()
    device90.queue.submit([command_buffer904, ]);
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7011.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device90.queue.submit([command_buffer901, ]);
    device80.queue.submit([command_buffer803, ]);
    device90.queue.submit([command_buffer904, ]);
    device90.queue.submit([command_buffer902, ]);
    compute_pass_encoder6000.popDebugGroup()
    device90.queue.submit([command_buffer901, ]);
    device110.queue.submit([command_buffer1100, ]);
    device110.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device90.queue.submit([command_buffer904, ]);
    device60.queue.submit([command_buffer600, ]);
    device90.queue.submit([command_buffer903, ]);
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    device110.queue.submit([command_buffer1100, ]);
    device60.queue.submit([]);
    device90.queue.submit([command_buffer904, ]);
    compute_pass_encoder7010.popDebugGroup()
    device80.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder9000.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder6001.popDebugGroup()
    device90.queue.submit([command_buffer904, ]);
    device80.queue.submit([command_buffer802, ]);
    device90.queue.submit([command_buffer902, command_buffer903, ]);
    compute_pass_encoder7000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder9000.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    device80.queue.submit([command_buffer802, command_buffer803, ]);
    device80.queue.submit([]);
    device80.queue.submit([command_buffer803, ]);
    device110.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    device90.queue.submit([command_buffer900, ]);
    device110.queue.submit([command_buffer1100, ]);
    device90.queue.submit([]);
    device100.queue.submit([]);
}