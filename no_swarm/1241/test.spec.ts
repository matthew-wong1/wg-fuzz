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
    const array0 = new Float32Array([0.25, 0.5, 0.5, 0.0, 0.0, -0.25, 0.5, 0.75, -0.5, 0.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.75, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, -0.5, 0.5, -0.5, -1.0, 0.0, 0.75, -1.0, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 0.0, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -0.25, 0.25, 0.0, -0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.0, 0.75, 0.75, -0.25, -1.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.25, -0.25, 0.25, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, 0.5, -0.75, 0.25, -0.75, 0.25, -0.25, 0.25, -0.5, ]);
    
    
    
    const array1 = new Float32Array([0.0, 0.25, 0.0, -0.5, 1.0, 0.5, 1.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.25, 0.0, 0.5, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, -0.75, -0.5, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, -0.5, 0.25, 1.0, 0.25, -0.25, 0.5, -0.25, 0.75, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.0, -0.25, 0.75, -0.25, 0.75, 0.75, 0.0, 0.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, -1.0, 0.5, 0.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 0.25, 0.75, 0.25, ]);
    
    const array2 = new Float32Array([1.0, 0.0, 0.5, -0.25, 0.0, -0.5, 0.75, -1.0, 1.0, 0.25, 0.75, -0.5, -0.75, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 0.75, -0.25, 0.25, 1.0, 1.0, 0.75, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 1.0, 0.0, -0.25, 0.25, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -0.25, -0.75, -0.5, 0.5, 0.75, -0.25, -1.0, -1.0, -0.75, 0.5, 0.25, 0.5, 0.25, -0.25, -0.5, -0.5, -0.75, 1.0, -1.0, 0.75, 1.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.25, 0.5, -0.25, -0.75, 0.5, 0.25, -0.75, -0.5, -0.25, 0.25, -0.75, 0.25, -0.5, -0.75, 0.5, 0.25, ]);
    
    
    const array3 = new Float32Array([0.75, 1.0, 0.75, -0.5, -0.75, 0.25, -0.25, -0.5, 0.75, 0.5, 1.0, -0.75, -0.25, -1.0, -1.0, -1.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, 0.0, -0.5, -0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, -1.0, -0.5, -1.0, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.25, 1.0, 0.5, 1.0, 0.25, -1.0, 0.5, 1.0, 1.0, 0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, 0.75, 0.0, -0.75, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([-0.75, 0.5, 0.5, -0.25, -0.5, 0.5, 0.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, -0.75, 0.5, 0.5, -0.5, -0.25, 0.75, -0.75, -1.0, 0.25, 1.0, -1.0, -1.0, 1.0, -1.0, -1.0, -1.0, 0.25, -0.75, 0.0, -1.0, 0.5, -0.5, 0.5, -0.5, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, -0.25, 0.25, -0.5, 0.25, 0.75, 1.0, 0.5, -0.5, -0.25, -0.5, -0.5, 0.5, 1.0, -0.25, 0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, 0.75, 0.5, 0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    const array5 = new Float32Array([-0.5, 0.5, -0.25, 0.5, 0.75, -0.25, 0.25, -1.0, 0.5, -0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, 0.25, 0.75, -0.5, -0.75, 0.0, -0.5, 1.0, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, 0.25, -0.75, 0.0, -0.5, 0.75, -1.0, 0.25, 0.0, 1.0, 0.5, 0.25, -1.0, 0.25, 0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, -0.5, 1.0, -1.0, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, -0.75, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.25, 0.5, -0.5, 0.25, 0.0, 0.25, 1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -0.5, 0.5, -0.5, -0.75, 1.0, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.5, ]);
    
    
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([-0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.25, 0.0, 0.0, -0.25, 0.5, -0.5, -0.75, -0.5, -0.5, 0.25, 1.0, 0.5, -0.25, 1.0, -1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.5, 1.0, 0.25, -0.75, -0.25, 1.0, -0.75, -1.0, -0.5, -0.5, -0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -1.0, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, 0.5, 0.25, -0.75, 0.75, 0.25, 1.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.75, 0.5, -0.25, -1.0, -0.25, 1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, 0.75, 1.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const array7 = new Float32Array([1.0, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, 0.0, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 0.25, -0.75, -1.0, -0.25, -0.25, 0.75, -1.0, 0.75, -0.25, -0.25, 0.75, -0.25, -1.0, -0.75, -0.5, -1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, -0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 1.0, 0.75, -0.5, 0.25, 0.5, 0.75, 0.0, -0.75, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.25, -0.25, -0.5, 0.5, -0.5, 0.25, -0.75, 0.5, -1.0, 1.0, -1.0, 0.25, 0.5, 0.0, 0.25, 0.25, ]);
    
    const array8 = new Float32Array([0.0, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 0.0, 0.25, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, -0.5, 0.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, 0.0, -0.5, 0.25, 0.0, 0.0, 0.75, 0.25, -0.25, -0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.75, 0.25, -0.75, -1.0, 0.0, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, -1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, 0.75, -0.75, 0.0, 0.25, 0.25, 0.75, 0.0, -0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, ]);
    
    
    
    
    const array9 = new Float32Array([0.75, -1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 0.25, 0.25, -0.25, -1.0, 0.25, 0.5, -1.0, 0.0, 0.0, 0.25, -1.0, -1.0, -0.25, 0.25, 0.75, -1.0, -1.0, -0.25, 0.5, -1.0, 0.5, 1.0, -1.0, 0.5, -0.25, 1.0, 1.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 0.25, -0.75, 0.0, 0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.5, 0.0, -0.75, 0.25, -0.25, -0.5, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, -1.0, -0.75, -0.5, 0.0, 1.0, 0.0, 1.0, 0.0, -0.75, 1.0, 0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.75, 0.25, -0.75, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 0.75, 0.25, 0.5, 0.5, 1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array10 = new Float32Array([1.0, -0.5, 0.0, 0.5, -0.25, 0.75, 1.0, -0.5, -1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, -0.25, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.0, 0.75, -0.75, 0.25, 0.75, 0.25, 1.0, 0.75, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 0.5, -1.0, -1.0, -0.75, -0.5, 1.0, -0.75, 0.0, 0.0, 0.75, 0.25, -1.0, 0.0, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 1.0, 0.25, 0.25, -1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.5, 0.5, -0.75, -0.75, 0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.25, 1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const command_buffer100 = command_encoder100.finish();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    
    query200.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const array11 = new Float32Array([-0.5, 0.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -0.25, -0.25, 0.75, -1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, -1.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.5, 0.75, 0.0, -0.25, -0.25, -0.5, -0.5, 0.5, -0.25, 0.0, 1.0, -1.0, 0.0, 0.0, 1.0, -0.75, 0.5, 0.5, 0.0, -0.75, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, 0.5, 0.0, -0.75, 0.25, -0.25, 1.0, 0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.0, 0.75, 0.25, 0.5, 0.25, -1.0, ]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture201.destroy();
    
    render_pass_encoder2010.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.beginOcclusionQuery(0)
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
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
        occlusionQuerySet: query202
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
        occlusionQuerySet: query201
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture200.destroy();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const array12 = new Float32Array([0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.5, -1.0, -0.25, 0.0, -0.75, 0.75, -1.0, -0.75, 1.0, 0.0, -0.25, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 0.75, -0.5, 0.25, -0.25, 0.5, -0.5, 0.5, -1.0, -0.5, -1.0, 0.0, -0.75, -1.0, 0.0, 0.75, -0.25, 0.75, 1.0, 0.0, -0.25, 0.75, -1.0, -0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.0, -0.5, -0.25, 0.5, 0.25, -0.25, -0.75, 0.5, 0.75, 0.5, -1.0, 0.0, -0.75, -0.5, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, 0.5, -1.0, -0.5, 0.0, -1.0, 1.0, ]);
    render_pass_encoder2010.executeBundles([])
    device20.queue.writeTexture({ texture: texture202 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2011.insertDebugMarker("marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.endOcclusionQuery()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    texture202.destroy();
    render_pass_encoder2020.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.setPipeline(render_pipeline200);
    query202.destroy()
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2001.pushDebugGroup("group_marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    query202.destroy()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.setStencilReference(1);
    texture200.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer201.destroy()
    buffer200.destroy()
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2011.setPipeline(render_pipeline200);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const array13 = new Float32Array([-0.5, -0.25, 0.25, -0.5, 0.5, 1.0, 0.25, 0.0, 0.0, 0.0, -0.5, 0.75, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.75, 1.0, -0.25, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 0.5, 1.0, -0.5, -0.25, 0.75, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.25, 1.0, -0.25, -0.75, -0.25, -0.25, -0.75, 0.5, 0.25, -0.75, 0.0, 0.5, -1.0, 1.0, 0.5, 1.0, -0.5, 0.0, 0.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.75, 0.75, 0.25, -0.25, 0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 0.0, 0.75, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, -1.0, -0.75, ]);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.insertDebugMarker("marker");
    buffer202.destroy()
    render_bundle_encoder202.popDebugGroup();
    buffer203.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    buffer200.destroy()
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture200.destroy();
    query200.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group203);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-0.25, 0.75, -0.5, 0.5, -1.0, 0.5, 0.75, -0.5, 0.5, 0.25, 0.25, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, 0.75, -0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 1.0, -1.0, -1.0, 1.0, 0.25, -0.75, -0.5, -0.25, -0.5, 0.0, -0.75, -1.0, 0.5, -0.25, -0.75, 0.5, 1.0, 0.25, -0.25, 0.25, -0.75, -0.25, -0.25, 0.5, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 0.25, 0.25, -0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 0.5, -0.25, -0.75, -0.75, 1.0, -0.25, 0.0, -0.75, 0.0, -0.5, 0.75, -0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 1.0, 0.0, 0.75, -0.75, 0.0, 0.25, 1.0, 0.0, ]);
    render_pass_encoder2020.setStencilReference(1);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2000.setPipeline(render_pipeline201);
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    
    device20.queue.writeBuffer(buffer207, 0, array14, 0, array14.length);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setPipeline(render_pipeline200);
    query204.destroy()
    render_pass_encoder2001.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    buffer207.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer206.destroy()
    device20.queue.writeBuffer(buffer205, 0, array11, 0, array11.length);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer208, 0, array14, 0, array14.length);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query202.destroy()
    compute_pass_encoder2020.setPipeline(compute_pipeline202);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer208, 0, array11, 0, array11.length);
    render_bundle_encoder201.setPipeline(render_pipeline203);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    
    
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture203.destroy();
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
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder2021.setStencilReference(1);
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.queue.writeBuffer(buffer209, 0, array7, 0, array7.length);
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer209, 0, array13, 0, array13.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer208, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    command_encoder203.resolveQuerySet(
        query205,
        0,
        32,
        buffer2010,
        0
    )
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2011.popDebugGroup();
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query205
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline204);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer201.destroy()
    command_encoder200.copyBufferToBuffer(
        buffer206,
        0,
        buffer204,
        0,
        400
    );
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer209, 0, array13, 0, array13.length);
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group205);
    device20.queue.writeBuffer(buffer208, 0, array13, 0, array13.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group206);
    render_pass_encoder2030.setPipeline(render_pipeline205);
    buffer2014.destroy()
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    buffer208.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2031.setPipeline(render_pipeline206);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2040.executeBundles([render_bundle_encoder201, render_bundle_encoder202, ])
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group207);
    device20.queue.writeBuffer(buffer2018, 0, array12, 0, array12.length);
    buffer209.destroy()
    render_pass_encoder2021.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2011, 0, array11, 0, array11.length);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_pass_encoder2010.popDebugGroup();
    
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group208);
    
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group209);
    
    
    
    
    render_pass_encoder2041.setPipeline(render_pipeline203);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_pass_encoder2030.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2011.end();
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    device20.queue.writeBuffer(buffer204, 0, array13, 0, array13.length);
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_pass_encoder2001.popDebugGroup();
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder202.copyBufferToBuffer(
        buffer2012,
        0,
        buffer2016,
        0,
        400
    );
    
    render_pass_encoder2021.setVertexBuffer(0, buffer2013);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2023, 0);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    buffer2020.destroy()
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    {
        await buffer2022.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2022.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2022.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer209,
        0
    )
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder202.popDebugGroup();
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder2021.insertDebugMarker("marker");
    buffer2015.destroy()
    device20.queue.writeBuffer(buffer2023, 0, array0, 0, array0.length);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    query205.destroy()
    device20.queue.writeBuffer(buffer2024, 0, array3, 0, array3.length);
    
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query205.destroy()
    const command_buffer204 = command_encoder204.finish();
    {
        await buffer2018.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2018.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2018.unmap();
        console.log(new Float32Array(data));
    }
    device20.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.writeBuffer(buffer2016, 0, array8, 0, array8.length);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer205.destroy()
    device20.queue.writeBuffer(buffer2024, 0, array14, 0, array14.length);
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder202.copyBufferToBuffer(
        buffer207,
        0,
        buffer2023,
        0,
        400
    );
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2019, 0, array0, 0, array0.length);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2010);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query203.destroy()
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
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
    device20.queue.writeBuffer(buffer2024, 0, array9, 0, array9.length);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer2012
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
    command_encoder205.copyBufferToBuffer(
        buffer206,
        0,
        buffer2017,
        0,
        400
    );
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2012.setPipeline(render_pipeline2010);
    command_encoder205.clearBuffer(buffer2024);
    
    render_pass_encoder2031.setVertexBuffer(0, buffer2024);
    render_pass_encoder2031.drawIndirect(buffer2025, 0);
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.setPipeline(render_pipeline208);
    render_pass_encoder2020.setVertexBuffer(0, buffer2014);
    render_pass_encoder2000.setVertexBuffer(0, buffer2016);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.draw(3);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2011);
    render_pass_encoder2041.setVertexBuffer(0, buffer2028);
    render_pass_encoder2041.drawIndirect(buffer2015, 0);
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline2010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2012.setBindGroup(0, bind_group2012);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group2013);
    compute_pass_encoder2020.end();
    render_pass_encoder2041.end();
    render_pass_encoder2012.setVertexBuffer(0, buffer2016);
    render_pass_encoder2030.setVertexBuffer(0, buffer2012);
    render_pass_encoder2030.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer206);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2041.end();
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    device20.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2011.draw(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2012.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.end();
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group2014);
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.setVertexBuffer(0, buffer209);
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    device40.queue.submit([]);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: render_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group2015);
    render_pass_encoder2050.setVertexBuffer(0, buffer209);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    render_pass_encoder2001.popDebugGroup();
    command_encoder201.popDebugGroup()
    render_pass_encoder2041.draw(3);
    render_pass_encoder2012.drawIndirect(buffer2011, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2050.draw(3);
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2030.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder2012.end();
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder2050.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2041.draw(3);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2050.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2012.drawIndirect(buffer2038, 0);
    render_pass_encoder2050.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2036, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2018, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    device20.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2010.end();
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2012.drawIndirect(buffer2033, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2012.drawIndirect(buffer209, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2012.drawIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2031, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.end();
    render_pass_encoder2012.end();
    render_pass_encoder2012.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2012.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2050.drawIndirect(buffer200, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2012.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2030, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2012.drawIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2030.end();
    render_pass_encoder2021.end();
    render_pass_encoder2040.end();
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2012.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2025, 0);
    render_pass_encoder2012.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2012.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2012.drawIndirect(buffer209, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2038, 0);
    render_pass_encoder2040.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2012.endOcclusionQuery()
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2012.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2012.end();
    compute_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2039, 0);
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2017);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder2012.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2012.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2012.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    device40.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2012.drawIndirect(buffer2017, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2012.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2041.drawIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2021.draw(3);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2012.drawIndirect(buffer2025, 0);
    render_pass_encoder2012.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2043, 0);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2012.drawIndirect(buffer2038, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2012.drawIndexed(3);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
}