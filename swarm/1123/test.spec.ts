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
    const array0 = new Float32Array([1.0, -0.5, 0.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.75, 0.5, 0.75, 0.0, -0.5, 1.0, 0.0, 0.25, -0.75, 1.0, 0.75, 0.75, 0.25, 0.0, 0.75, 0.0, 0.0, 1.0, -0.25, 0.5, 0.25, -0.25, 0.0, 0.0, 0.75, 0.5, 0.75, 0.75, -0.5, -0.5, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, -0.75, 0.75, 0.75, -0.25, -0.5, -0.25, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, -0.75, 0.25, -1.0, 0.5, 0.25, -0.25, -0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, 0.5, 0.0, 0.25, 0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 0.75, 0.25, 0.75, ]);
    const array1 = new Float32Array([0.25, 0.25, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 0.75, 0.5, 0.75, -0.5, 1.0, -0.25, -0.5, 0.25, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 1.0, 1.0, -1.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, 0.5, -0.25, 0.25, 0.5, 0.0, 0.0, -0.25, 0.75, 0.0, 1.0, 0.5, 0.5, 0.25, 0.75, 0.0, 1.0, 0.75, 0.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 0.0, -0.75, 0.25, 0.0, 0.5, 0.75, -0.25, -0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.0, -1.0, 0.25, 1.0, 0.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.5, -0.5, -1.0, 0.0, 0.5, 0.5, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 0.0, -0.75, -1.0, -0.75, 0.5, 0.5, -0.75, 1.0, -0.75, 0.75, 0.75, 0.5, 0.25, -0.25, -0.25, 0.0, 0.25, -0.5, 1.0, 0.0, 0.25, 0.0, -0.5, 1.0, -0.75, -0.75, -0.5, 0.0, -1.0, 1.0, 0.5, 0.75, 0.25, 0.5, -0.25, -0.75, 0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.5, 0.25, -1.0, -1.0, -0.25, 0.75, -0.25, 0.75, 0.25, 0.25, -0.75, -0.5, -0.75, 0.5, 0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 1.0, 0.25, -0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-0.5, -0.75, 0.25, 0.25, -0.75, 0.75, -0.5, -1.0, 0.0, -0.75, -0.75, -0.25, -0.75, 0.0, 0.75, -0.5, 0.5, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.5, -0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 1.0, 1.0, -0.75, 0.5, 0.0, -0.75, 0.0, -0.5, 0.75, 0.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, -0.5, 0.0, 0.25, -1.0, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.75, 1.0, 0.25, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const array4 = new Float32Array([-1.0, 0.0, 0.0, 0.5, 0.5, 0.25, 0.5, -0.75, 1.0, 1.0, -0.5, 0.75, 0.75, 0.5, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.25, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.75, 0.75, -1.0, -0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.75, 0.0, -0.25, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, -0.25, -0.25, -1.0, -0.25, -0.25, 0.5, 0.0, -0.75, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, -0.75, -0.25, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.25, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, 0.5, 1.0, -1.0, -0.25, 0.0, -1.0, -0.5, 0.75, 0.25, -0.5, 0.75, 1.0, ]);
    
    
    const array5 = new Float32Array([0.5, 0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 0.25, -0.25, -1.0, 1.0, 0.25, -0.5, -1.0, 0.5, -1.0, -0.75, -1.0, 0.75, -1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, 0.0, -0.25, 1.0, 0.75, 0.0, 1.0, 0.0, -1.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.75, 0.5, 0.0, -1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.75, 1.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.25, -0.75, -0.75, 1.0, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, -1.0, 0.5, ]);
    const array6 = new Float32Array([0.5, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, 0.5, -0.5, -1.0, -1.0, -0.25, 0.75, -0.25, 0.0, 0.0, 0.5, 0.5, -0.5, 1.0, -0.5, -0.75, -0.5, 0.25, 0.5, 0.5, -0.75, -1.0, 1.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.25, -0.5, -0.5, 0.0, 0.25, 0.0, 0.25, -0.25, 0.25, -0.75, 0.5, 0.0, -1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 0.0, 0.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 0.0, 0.75, 0.25, 0.0, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    
    const array7 = new Float32Array([-0.5, 0.75, 0.0, -1.0, 1.0, 0.5, -1.0, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 1.0, 0.0, -0.5, -1.0, 0.5, 0.5, 0.25, 0.5, -1.0, -0.75, -0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, 1.0, -0.75, 0.0, 0.25, 1.0, 0.25, 0.5, -1.0, -0.5, 0.75, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.75, -1.0, -0.25, -0.75, 0.75, -0.25, 0.0, -0.5, -1.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.25, -0.5, 0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.75, 0.0, -1.0, -0.5, -0.75, 0.0, -0.25, 0.5, 1.0, 0.75, -0.5, -0.5, -0.5, ]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture200.destroy();
    device20.pushErrorScope("validation");
    
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
    
    device20.destroy();
    
    
    const array8 = new Float32Array([-0.5, 0.5, -1.0, 0.0, 0.0, 1.0, 0.0, -0.25, 0.75, -0.25, 0.0, -0.25, -0.25, 0.25, 0.0, 0.0, 0.75, -0.75, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 1.0, -1.0, 0.25, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 1.0, 0.0, 0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.25, 0.25, -0.75, -0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, 0.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 0.0, -0.75, 1.0, -1.0, -0.5, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, 0.25, 0.0, -1.0, 0.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const array9 = new Float32Array([0.5, 0.0, -0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -1.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, 0.25, 0.0, 0.5, 0.5, 0.5, 0.0, 0.0, 0.5, -0.25, 0.25, -0.5, 0.25, 0.5, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -1.0, 0.25, 0.75, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, -0.75, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 1.0, 0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, -0.75, -0.75, -0.5, 0.5, 0.5, -1.0, 0.25, 1.0, -0.5, 0.75, 0.0, -0.75, -0.75, -1.0, -0.25, 1.0, 1.0, 0.75, 1.0, 0.25, 0.75, 1.0, 1.0, -0.5, 0.25, 0.75, 0.0, -1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device00.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array10 = new Float32Array([0.75, -0.25, -0.5, -0.25, -0.5, 0.5, 0.5, -0.25, 0.5, 1.0, 0.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.75, -0.5, 0.25, -0.25, -0.25, -1.0, -1.0, -1.0, 0.25, 0.75, -0.5, 0.0, -1.0, 0.75, 0.0, -0.5, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.5, -0.25, 0.0, 0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -0.5, -0.5, 0.25, -0.25, 0.5, -0.25, -0.25, 0.25, 0.5, 0.75, 0.75, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, -1.0, -0.25, -0.25, 0.0, 0.75, -1.0, 0.75, 1.0, -0.25, -1.0, -0.25, -1.0, -1.0, -0.25, -0.5, -0.5, 0.75, 0.75, 0.25, 0.25, 0.75, -1.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.5, 0.5, -0.5, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device40.pushErrorScope("out-of-memory");
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const array11 = new Float32Array([-0.25, -0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 0.75, -1.0, 0.0, 0.25, -0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.5, -0.75, 0.25, -1.0, -1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 0.75, -1.0, 1.0, 0.0, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.75, 0.25, 0.75, 0.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.0, 0.5, 1.0, 0.0, -0.5, 0.5, 0.25, -0.75, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, 0.25, 0.75, 0.25, -1.0, 1.0, 0.5, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const array12 = new Float32Array([0.0, 0.25, -0.5, -0.5, 0.25, 0.25, -0.25, -1.0, -0.75, 1.0, -0.5, 0.0, 1.0, 0.5, 0.0, 0.5, 0.25, -1.0, 0.0, -0.25, 0.25, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 0.75, 1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.5, 0.75, -1.0, 1.0, 0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 0.0, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.0, 0.25, -0.25, 0.0, -0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 1.0, 0.0, -1.0, 0.25, 0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -0.5, ]);
    
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array13 = new Float32Array([0.25, 0.5, 0.25, 0.75, -0.5, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.25, 0.75, -0.5, 0.0, -0.75, 0.5, -0.5, -0.5, 0.75, -0.5, 0.5, -1.0, 0.25, 1.0, -0.25, -0.25, 0.75, 0.5, 0.0, -0.5, 0.25, -1.0, 1.0, -0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 0.25, 0.5, -0.5, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 0.75, 0.5, -0.75, 0.75, 0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.0, 0.75, -0.5, -0.75, 1.0, -1.0, 0.25, 0.25, -1.0, 0.75, -0.75, 0.75, -0.25, 0.5, -0.75, -0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder300.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture401 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    texture401.destroy();
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    render_bundle_encoder400.popDebugGroup();
    device40.pushErrorScope("internal");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    command_encoder401.insertDebugMarker("mymarker");
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
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.insertDebugMarker("mymarker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture400.destroy();
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    command_encoder401.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array14 = new Float32Array([-1.0, -0.25, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, 1.0, -0.75, 0.25, 0.75, 0.75, -0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.25, 0.75, 0.25, 1.0, 0.25, 0.25, -0.75, 0.25, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -1.0, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.5, 0.25, -0.25, 0.75, -0.5, 0.5, -1.0, -1.0, -0.25, -1.0, -0.25, 0.0, 0.5, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.75, 0.75, 0.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.25, -1.0, 0.25, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, 1.0, ]);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture302.destroy();
    
    
    
    device30.queue.submit([command_buffer300, ]);
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_buffer400 = command_encoder400.finish();
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    command_encoder402.insertDebugMarker("mymarker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder403.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device40.queue.submit([command_buffer400, ]);
    const array15 = new Float32Array([0.25, 0.0, 0.5, -1.0, 1.0, -0.5, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, -0.75, 0.5, 0.5, 1.0, -0.5, 0.5, -0.25, 0.0, 0.25, 0.0, 1.0, 0.25, 0.0, 0.5, -0.25, 0.75, 0.5, 0.5, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.5, 0.25, -0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 1.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.0, 0.5, -0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.25, 0.5, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_buffer403 = command_encoder403.finish();
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder500.insertDebugMarker("mymarker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.popDebugGroup()
    
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder300.popDebugGroup();
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    device70.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const array16 = new Float32Array([-0.25, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -0.75, -0.75, -0.75, 0.0, -1.0, -0.25, -0.25, -0.25, -0.25, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, 0.0, 0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.5, -0.75, 1.0, 0.25, 0.75, -0.75, 0.25, -1.0, 0.0, 1.0, -1.0, 0.5, 0.5, -0.75, 1.0, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 0.75, 0.75, 1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.75, -0.75, -0.5, 0.0, 0.25, -0.5, 0.75, -0.25, -0.75, -0.5, 0.25, 0.75, -0.25, 0.5, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 1.0, -0.25, 1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, -0.5, -0.75, -0.75, ]);
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder3010.popDebugGroup()
    
    device50.pushErrorScope("internal");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder406.insertDebugMarker("mymarker");
    command_encoder406.insertDebugMarker("mymarker");
    
    const command_buffer406 = command_encoder406.finish();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device40.pushErrorScope("out-of-memory");
    const command_buffer404 = command_encoder404.finish();
    command_encoder405.insertDebugMarker("mymarker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    render_bundle_encoder301.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array17 = new Float32Array([0.0, 0.75, 0.5, -0.5, -1.0, 1.0, 1.0, -0.5, 0.25, 1.0, -0.25, -0.25, 1.0, 1.0, 0.0, -0.5, -0.75, 0.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.75, 0.5, -0.5, -0.75, 1.0, 0.75, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, -0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 1.0, 0.0, -0.25, -0.25, 1.0, -0.75, -0.5, 0.0, 0.5, 1.0, -1.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.75, 0.25, 0.25, -0.5, 1.0, 0.25, 0.5, 1.0, 0.75, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, -0.5, 0.25, 0.0, 0.5, -1.0, 0.0, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.5, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, 0.5, -0.25, 0.75, 1.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    
    const command_buffer303 = command_encoder303.finish();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder502.insertDebugMarker("mymarker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device60.destroy();
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder505.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    command_encoder504.insertDebugMarker("mymarker");
    
    
    const command_buffer505 = command_encoder505.finish();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    
    compute_pass_encoder3020.popDebugGroup()
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder400.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array18 = new Float32Array([0.25, 1.0, -1.0, 0.25, -0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 0.75, 0.5, 1.0, 0.25, -0.25, 0.25, -0.5, -0.75, 1.0, 0.25, -1.0, 0.25, 1.0, -0.25, -1.0, 0.5, 0.25, 0.0, -0.75, 0.75, 0.0, -0.75, -0.75, 0.5, -0.25, -0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 0.5, 0.5, 0.25, 0.75, 0.25, 0.25, -0.75, 0.0, 0.5, 0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.75, -0.5, -0.25, 1.0, -0.5, -0.25, -0.5, -0.25, 0.25, -1.0, 0.25, -0.25, -1.0, 0.75, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, -0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, -0.5, ]);
    const command_buffer504 = command_encoder504.finish();
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device30.queue.writeTexture({ texture: texture303 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array19 = new Float32Array([-1.0, -1.0, 1.0, -0.75, 0.75, -0.25, 1.0, -0.25, -0.25, 0.0, -1.0, 0.5, -0.5, -0.75, 0.75, 0.25, 1.0, -0.5, -0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, 1.0, -0.25, -0.5, 0.0, 0.0, 0.25, -0.75, 0.0, 0.5, 0.0, 0.75, -0.5, -0.5, -0.5, -0.5, 1.0, 1.0, -0.25, -0.25, -1.0, -0.5, -0.5, 1.0, -0.5, 0.75, 0.25, 0.25, -0.25, 0.75, -0.5, 0.75, 1.0, -1.0, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, -0.75, -0.25, 0.5, -1.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.5, 0.25, 0.5, -0.5, 0.25, 1.0, 1.0, 0.75, -0.5, 0.0, -0.5, ]);
    compute_pass_encoder4030.popDebugGroup()
    render_bundle_encoder401.popDebugGroup();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder304.insertDebugMarker("mymarker");
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    
    
    
    
    render_bundle_encoder301.popDebugGroup();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder3011.insertDebugMarker("marker")
    
    const command_buffer501 = command_encoder501.finish();
    texture304.destroy();
    
    
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device30.queue.submit([command_buffer303, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    
    
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    texture402.destroy();
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const array20 = new Float32Array([0.25, 0.5, 0.0, 0.25, 0.25, 0.0, -0.75, 1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.25, 0.25, 0.25, 0.5, -1.0, 0.75, -0.75, 0.5, -0.75, 1.0, 0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.25, -1.0, -0.75, -0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, 0.25, -0.5, 0.5, 0.75, -1.0, -0.75, 0.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.0, -0.5, -1.0, 0.25, 0.0, -0.25, 0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -0.75, 0.75, -0.75, 0.0, 0.25, -1.0, 0.5, 0.0, 0.0, 0.5, -0.5, 0.5, -0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, ]);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device50.pushErrorScope("out-of-memory");
    device50.queue.submit([command_buffer501, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    device30.queue.writeTexture({ texture: texture303 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer304, ]);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device30.queue.writeTexture({ texture: texture302 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture403.destroy();
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer403, ]);
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer506 = command_encoder506.finish();
    const command_buffer405 = command_encoder405.finish();
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    compute_pass_encoder4020.popDebugGroup()
    const command_buffer306 = command_encoder306.finish();
    device50.queue.submit([command_buffer500, command_buffer505, command_buffer506, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3060.popDebugGroup()
    compute_pass_encoder3060.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    device50.queue.submit([command_buffer504, command_buffer505, command_buffer506, ]);
    device40.queue.submit([command_buffer405, ]);
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder4030.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer303, command_buffer306, ]);
    compute_pass_encoder3011.popDebugGroup()
}