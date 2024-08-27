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
    
    
    const array0 = new Float32Array([0.75, 0.0, -0.5, 0.0, 1.0, 1.0, 1.0, -1.0, 0.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.25, -1.0, 0.0, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 0.5, -0.5, 0.5, 0.75, 1.0, 0.25, 0.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.25, -1.0, 0.75, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.25, -0.5, -0.25, 0.5, 0.75, 0.5, -0.5, 1.0, 0.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.75, -0.5, 1.0, 0.75, 1.0, -0.75, 0.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, 0.0, 0.0, -0.25, -0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 0.75, 1.0, ]);
    
    
    
    
    const array1 = new Float32Array([1.0, -0.75, 0.0, -0.25, 0.0, -1.0, 0.75, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.25, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 0.25, 0.75, 1.0, 0.25, -0.5, -0.25, -0.5, 1.0, 1.0, 1.0, 0.5, -0.5, -0.75, 0.25, -0.75, -0.5, -1.0, -0.25, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, 0.25, 0.0, -1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, 0.0, 1.0, 1.0, 0.75, -0.5, -0.25, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, -0.5, -1.0, ]);
    
    
    
    const array2 = new Float32Array([0.5, -0.75, 1.0, -0.25, -0.75, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, -0.75, -0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, -1.0, 0.0, 1.0, 0.5, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.75, 0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.25, -1.0, -1.0, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 0.25, -0.75, -1.0, 0.75, -1.0, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 0.25, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.25, 0.75, 0.25, 0.25, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 0.0, ]);
    
    
    
    const array3 = new Float32Array([0.0, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -1.0, -0.75, -0.5, 0.25, 0.75, 1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.25, -0.75, 1.0, 0.75, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 0.75, 0.75, -0.5, 0.75, 1.0, 0.25, 0.5, 0.75, -0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 0.25, -0.5, 1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 0.75, 0.25, 0.5, 1.0, 0.0, -0.75, -1.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 0.25, 0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.5, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([-1.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.5, 1.0, 0.75, -1.0, 1.0, 0.0, -0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -0.5, -1.0, 0.5, -0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, 0.0, -0.75, 1.0, -1.0, -0.75, -0.5, -0.25, 0.25, -0.5, -0.75, -0.5, -0.75, -0.5, 0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.75, -0.75, 1.0, -0.5, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -0.25, -0.25, 0.75, 0.0, 0.0, 0.25, -1.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device00.destroy();
    const array5 = new Float32Array([-0.5, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, 0.75, 0.25, 0.5, 0.5, 0.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, -1.0, 0.75, -0.5, 1.0, 0.5, 0.0, 1.0, 0.5, 0.0, 0.5, 1.0, 0.0, -0.25, 0.25, -0.25, 0.5, 0.75, -1.0, 0.75, -1.0, 0.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.0, 1.0, -1.0, -0.25, -0.25, 0.75, 0.0, 0.5, 0.75, 1.0, -0.25, 1.0, -0.75, -0.75, -0.25, -1.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.5, -0.5, 0.75, -1.0, 0.0, 0.75, -1.0, -0.25, -1.0, 0.25, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query201.destroy()
    device20.destroy();
    
    
    
    const array6 = new Float32Array([0.0, 0.5, -0.75, 1.0, 0.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.25, -0.5, 0.5, 0.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 0.5, 0.25, -0.25, -0.5, -1.0, 0.75, -0.75, -0.75, 0.0, 0.0, -1.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.0, -1.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.25, 0.75, 0.25, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.5, -0.25, -0.25, -0.75, -1.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, -0.75, 0.0, -0.25, 0.0, 0.75, 0.25, -0.75, -0.25, 0.25, -0.25, -0.5, -0.75, -0.5, -0.75, -0.5, 1.0, -0.75, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    device00.destroy();
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array7 = new Float32Array([0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.0, 1.0, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 0.75, 0.75, 0.0, -0.75, 0.25, -1.0, 0.0, 0.5, -1.0, 0.25, 0.5, 0.75, 0.0, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, 0.5, 1.0, 0.5, 1.0, 0.75, 0.5, -0.5, 0.5, 0.25, -1.0, -0.5, 1.0, -0.75, -0.5, -1.0, 0.0, 0.5, 0.75, -0.5, 1.0, 0.5, 1.0, 0.75, 0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 1.0, -1.0, 0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.25, -0.75, 0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 0.0, -0.25, 0.5, ]);
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([0.0, 0.0, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.75, 0.0, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, -0.25, -1.0, 0.75, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, -0.5, 0.75, 1.0, 0.5, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.5, -0.5, 0.75, 0.75, 0.0, 1.0, -0.75, -0.25, -0.5, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer400 = command_encoder400.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.25, 0.0, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, -0.5, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 1.0, 0.0, 1.0, 0.5, -0.75, 1.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, 0.75, 0.25, 0.5, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, -0.75, 0.75, -0.5, 0.5, -1.0, 0.5, 0.75, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.25, -0.25, 1.0, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.0, 0.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([-0.5, 0.0, 0.75, -0.25, 0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.25, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, -0.5, -0.5, -1.0, 0.75, 0.5, -0.25, 0.5, 1.0, 0.0, 0.75, -0.5, 0.0, -0.75, 0.5, 0.75, 0.5, 0.75, 0.75, 0.75, -1.0, 1.0, -1.0, -0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 0.25, 1.0, 1.0, 1.0, -0.25, -0.25, 0.75, 0.5, 1.0, 0.25, -1.0, -0.75, 0.75, -0.25, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.75, -0.75, -0.75, 0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.75, 0.25, 0.25, 1.0, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const array11 = new Float32Array([0.75, -1.0, -0.5, -0.75, -0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, -1.0, 1.0, 0.75, -0.5, -0.75, 1.0, -0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, -1.0, 1.0, -0.25, -0.5, 0.75, -0.25, -0.25, 1.0, 1.0, 0.25, -0.75, -1.0, -0.5, 0.75, 0.25, -0.5, 0.75, 0.0, 0.75, 1.0, -0.5, 0.75, 1.0, 0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, -0.75, -0.75, 0.0, 0.5, 0.5, -0.75, 0.0, -0.25, -1.0, 0.0, 0.75, -0.5, 0.25, -0.25, 0.5, 0.25, -0.5, -1.0, 0.25, 0.75, 0.0, -1.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.25, 0.25, 0.25, -1.0, 0.75, 0.25, -0.75, 0.75, 0.0, 1.0, -0.5, -0.25, ]);
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device50.pushErrorScope("validation");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.destroy();
    const command_buffer500 = command_encoder500.finish();
    device50.destroy();
    const array12 = new Float32Array([0.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.0, 0.75, 0.5, -0.5, -0.25, 1.0, -0.25, -0.75, 0.25, -0.75, -0.75, 0.5, 0.0, -0.25, 0.5, -0.25, 0.25, 0.0, -0.5, -0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, -0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -0.25, -0.75, 0.5, 0.5, 0.0, -0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -0.5, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, 1.0, -0.75, 0.5, 1.0, -0.25, -0.75, 0.75, -0.25, 0.0, 0.0, -0.75, -0.75, -1.0, 0.0, -0.75, 0.75, 0.5, 0.25, 0.0, 0.5, -0.75, 1.0, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device20.pushErrorScope("validation");
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_buffer601 = command_encoder601.finish();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    compute_pass_encoder6020.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.pushErrorScope("validation");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const command_buffer602 = command_encoder602.finish();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.pushErrorScope("internal");
    texture600.destroy();
    compute_pass_encoder6020.insertDebugMarker("marker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device100.destroy();
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device30.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device70.destroy();
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.insertDebugMarker("mymarker");
    device60.queue.submit([command_buffer601, ]);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder603.insertDebugMarker("mymarker");
    device90.pushErrorScope("internal");
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    query600.destroy()
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
    const command_buffer603 = command_encoder603.finish();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device90.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
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
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device110.pushErrorScope("internal");
    query600.destroy()
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder602.setPipeline(render_pipeline600);
    compute_pass_encoder6000.insertDebugMarker("marker")
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    compute_pass_encoder6000.insertDebugMarker("marker")
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
    
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    query600.destroy()
    query201.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder8000.insertDebugMarker("marker")
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.setPipeline(render_pipeline602);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    device110.queue.writeTexture({ texture: texture1100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query800 = device80.createQuerySet({
        label: "query800",
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
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder6020.setPipeline(compute_pipeline601);
    
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device60.queue.submit([command_buffer603, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.75, 0.75, -1.0, 0.0, 1.0, 0.75, -0.75, 0.25, -1.0, -1.0, 0.5, -0.5, -0.75, 0.25, -0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, -0.25, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -0.25, 0.0, 0.0, -0.25, 0.75, 0.25, 0.5, 0.75, 1.0, 0.0, 0.25, 0.0, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 1.0, 0.75, -0.5, -0.5, -0.5, -1.0, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, -0.75, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 1.0, 1.0, 0.75, 0.0, -0.5, -0.75, -1.0, -0.25, 0.25, -1.0, -1.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.5, -0.25, 0.5, 0.25, ]);
    
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    
    query800.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query600.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    command_encoder801.insertDebugMarker("mymarker");
    command_encoder800.insertDebugMarker("mymarker");
    command_encoder801.insertDebugMarker("mymarker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    device110.queue.writeTexture({ texture: texture1101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1100.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
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
    
    render_bundle_encoder802.setPipeline(render_pipeline800);
    
    texture1100.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    device80.pushErrorScope("internal");
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
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
    texture1101.destroy();
    const command_buffer801 = command_encoder801.finish();
    const array14 = new Float32Array([0.5, 1.0, 0.0, -0.5, -0.25, 0.25, 0.5, 1.0, 0.5, 0.0, -1.0, 0.25, 1.0, 0.75, 0.75, -0.5, -0.25, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 1.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.0, 1.0, -0.75, -0.25, -0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, -0.75, -0.75, 0.75, 0.5, 1.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.25, -0.75, -1.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.25, 0.5, -0.25, 1.0, -0.5, -0.25, -0.75, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, -0.75, 0.0, -0.25, 0.25, 1.0, 0.25, 0.5, -0.75, -0.5, -0.75, -0.75, 0.0, 0.25, -0.5, 0.75, -0.5, 1.0, 0.75, ]);
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    query602.destroy()
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group600);
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    render_bundle_encoder801.setPipeline(render_pipeline802);
    
    
    
    compute_pass_encoder6020.dispatchWorkgroups(100);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    compute_pass_encoder6000.dispatchWorkgroups(100);
    texture600.destroy();
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    command_encoder000.insertDebugMarker("mymarker");
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    query800.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.pushErrorScope("internal");
    query601.destroy()
    
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder800.insertDebugMarker("mymarker");
    buffer602.destroy()
    
    
    buffer603.destroy()
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    query603.destroy()
    device30.pushErrorScope("out-of-memory");
    buffer601.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    device110.queue.writeTexture({ texture: texture1100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture602.destroy();
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    buffer600.destroy()
    
    command_encoder604.pushDebugGroup("mygroupmarker")
    query601.destroy()
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
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
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    compute_pass_encoder8000.setPipeline(compute_pipeline801);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    texture801.destroy();
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    texture1200.destroy();
    command_encoder605.copyBufferToBuffer(
        buffer600,
        0,
        buffer602,
        0,
        400
    );
    texture601.destroy();
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    device120.pushErrorScope("out-of-memory");
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    
    const sampler1104 = device110.createSampler( { label: "sampler1104" } );
    command_encoder1200.insertDebugMarker("mymarker");
    command_encoder1200.insertDebugMarker("mymarker");
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const compute_pipeline1100 = device110.createComputePipeline({
        label: "compute_pipeline1100",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    command_encoder1100.insertDebugMarker("mymarker");
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    const compute_pipeline1101 = device110.createComputePipeline({
        label: "compute_pipeline1101",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    
    
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    command_encoder1100.insertDebugMarker("mymarker");
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    query601.destroy()
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline1102 = device110.createComputePipeline({
        label: "compute_pipeline1102",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1102,
            entryPoint: "main"
        }
    });
    query604.destroy()
    texture1201.destroy();
    command_encoder605.insertDebugMarker("mymarker");
    compute_pass_encoder6040.setPipeline(compute_pipeline601);
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler1105 = device110.createSampler( { label: "sampler1105" } );
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout604,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query800.destroy()
    texture1200.destroy();
    query603.destroy()
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    const compute_pipeline1103 = device110.createComputePipeline({
        label: "compute_pipeline1103",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1100,
            entryPoint: "main"
        }
    });
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout801,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
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
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6040.setBindGroup(0, bind_group602);
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder6040.dispatchWorkgroups(100);
    const command_buffer606 = command_encoder606.finish();
    device60.queue.submit([command_buffer606, ]);
    const command_buffer1201 = command_encoder1201.finish();
    device120.queue.submit([command_buffer1201, ]);
    const command_buffer605 = command_encoder605.finish();
    const command_buffer1200 = command_encoder1200.finish();
    device120.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group800);
    device40.queue.submit([command_buffer400, ]);
    device80.queue.submit([command_buffer801, ]);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer802, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer802, 0);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    device120.queue.submit([command_buffer1200, ]);
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer804,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group801);
    device110.queue.submit([command_buffer1100, ]);
    device120.queue.submit([command_buffer1201, ]);
    device60.queue.submit([command_buffer605, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group802);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer606, 0);
    device80.queue.submit([]);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer607, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer607, 0);
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group603);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer807, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer807, 0);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6010, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6010, 0);
    device120.queue.submit([command_buffer1200, ]);
    device60.queue.submit([]);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6011, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6011, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer801, ]);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6012, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6012, 0);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group604);
    device110.queue.submit([command_buffer1100, ]);
    device110.queue.submit([command_buffer1100, ]);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group605);
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer605, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6017, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6017, 0);
    device80.queue.submit([]);
    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6019,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group606);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer601, command_buffer605, command_buffer606, ]);
    device60.queue.submit([command_buffer603, ]);
    device110.queue.submit([]);
    const command_buffer701 = command_encoder701.finish();
    device60.queue.submit([command_buffer601, ]);
    device110.queue.submit([]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    const command_buffer600 = command_encoder600.finish();
    device120.queue.submit([command_buffer1200, ]);
    device130.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device60.queue.submit([command_buffer606, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device10.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6020, 0);
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer600, ]);
    device110.queue.submit([]);
}