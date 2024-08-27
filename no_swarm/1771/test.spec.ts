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
    
    
    
    const array0 = new Float32Array([1.0, 1.0, -0.25, -0.25, 0.75, 0.0, 0.0, 0.75, 0.0, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, 0.0, -0.5, 0.25, 0.0, 0.0, -0.75, 0.0, -1.0, -1.0, -0.25, 0.25, -1.0, -1.0, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, 1.0, -0.75, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.5, 0.75, 1.0, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, 0.25, -0.75, 0.5, -1.0, 1.0, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, -0.75, 0.75, 0.25, -1.0, -0.75, 0.0, -0.75, 0.0, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, 0.5, 0.75, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.25, 0.75, -0.5, -0.75, 1.0, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, -1.0, 1.0, 0.5, 0.5, 0.75, -0.75, 0.5, 0.75, -0.5, 0.5, -0.5, 1.0, 0.25, 0.25, -0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -1.0, -0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 0.5, -0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.0, 0.0, 1.0, -0.25, 0.75, 0.25, 0.75, -0.5, 0.5, 1.0, -1.0, -1.0, -0.75, -0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, -0.5, 0.5, 0.75, -0.75, 0.75, -0.25, 1.0, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, -1.0, 0.75, -1.0, ]);
    
    const array2 = new Float32Array([-0.75, -1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 0.25, 1.0, 0.5, -0.5, -1.0, -0.75, 1.0, 0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 1.0, -0.5, 0.75, 0.0, -1.0, -0.5, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, -1.0, 1.0, 0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 0.25, -0.75, -0.75, 0.75, -0.5, -0.75, -0.25, -1.0, -1.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, -1.0, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 0.75, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, -0.25, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, 0.25, -0.25, 0.0, 0.75, -0.75, 1.0, 0.5, -0.25, 0.75, -0.25, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, 0.25, -0.75, 0.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.75, 0.0, -0.25, -1.0, 0.25, -0.25, -0.75, 0.5, -0.5, 0.75, 1.0, 0.0, -0.25, -1.0, -0.25, 0.0, 1.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.5, 0.0, -0.25, 0.0, -0.25, 0.0, -0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 0.75, -0.75, -1.0, -0.25, 0.25, 0.5, -0.25, -1.0, -0.5, 0.25, -0.75, 0.25, 0.0, 0.75, ]);
    const array4 = new Float32Array([0.75, -0.75, 1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, -0.25, 0.5, 0.0, 0.25, -0.75, 0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.5, -0.25, 0.75, 0.5, -0.5, 0.25, -0.75, 0.0, 0.75, 0.25, 0.0, -0.5, 0.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.75, -1.0, 0.5, -0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 1.0, -0.5, 0.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const array5 = new Float32Array([-0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, 0.75, 0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 0.75, -0.5, -0.5, 0.0, -0.5, -0.5, -0.25, 0.25, -1.0, -1.0, 0.75, 0.5, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, 0.5, 0.75, 0.25, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -0.75, -0.75, -0.25, -0.5, -0.75, -0.5, 0.0, 0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 1.0, 0.0, 0.5, -1.0, 0.25, -0.5, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, ]);
    buffer000.destroy()
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    
    
    
    
    const array6 = new Float32Array([-0.25, -1.0, 0.0, 0.75, 0.25, 0.0, -0.5, 0.25, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, -1.0, -0.5, -0.25, -0.75, -1.0, 0.75, -1.0, 0.75, 0.5, -0.75, 0.0, 0.25, 1.0, -0.75, -0.25, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 1.0, -0.25, 0.25, 0.5, 1.0, 0.25, -1.0, 0.0, 0.25, 0.0, 0.75, -1.0, 1.0, -1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 1.0, 0.0, 0.75, -0.25, 0.25, -0.5, -0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, 0.75, -0.75, 0.0, -1.0, 0.0, 0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array7 = new Float32Array([-0.25, -0.75, 0.0, 1.0, 1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, 0.75, 0.75, -1.0, -0.25, 1.0, 0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -0.75, -0.5, -0.75, -0.75, -0.5, 0.75, -0.25, 1.0, -1.0, 0.25, 0.5, -0.5, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.0, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, -0.5, -0.5, 0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -0.25, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, 0.25, 1.0, -1.0, -0.25, 0.5, 0.5, 1.0, -0.25, 1.0, -0.25, 1.0, -1.0, -0.25, ]);
    device20.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    device10.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array8 = new Float32Array([0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.25, 0.5, -0.5, 0.25, -1.0, -0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 0.0, -1.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.5, -0.5, -0.25, 0.75, 1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -0.25, -0.75, 0.0, 0.25, -0.5, -0.5, -1.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.5, -0.5, -0.5, -0.5, -0.25, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.25, 0.5, 0.5, -0.5, -1.0, 0.5, -1.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 0.0, 1.0, ]);
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array9 = new Float32Array([0.5, 0.5, 0.5, -0.75, 0.25, -0.75, -1.0, -0.25, -0.75, 0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, 0.0, -0.5, -0.25, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 1.0, 0.0, 0.0, 0.25, -0.25, -0.25, -0.5, 1.0, 0.0, -0.25, 0.75, 0.5, 0.5, 1.0, 0.25, -0.25, -1.0, -1.0, 0.25, -0.25, 0.0, 0.75, -0.75, 0.5, 0.5, -0.75, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -0.75, -0.25, -0.5, 0.5, -0.5, 1.0, -0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -0.75, 0.25, 0.5, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device30.destroy();
    texture000.destroy();
    const array10 = new Float32Array([1.0, 0.75, -1.0, 0.25, -1.0, 0.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.0, 0.0, 0.0, -1.0, 0.25, -1.0, 1.0, -0.5, -0.75, 0.25, -0.25, -0.25, 1.0, 1.0, -0.75, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, 1.0, 0.0, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 0.0, 0.5, 0.75, -1.0, 0.0, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.0, 1.0, 0.5, 1.0, 0.0, 0.75, -0.5, -0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, 0.75, 0.0, -0.75, -0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.0, -0.75, 0.5, -0.75, -0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array11 = new Float32Array([0.25, 0.0, -0.75, -1.0, -0.25, 1.0, -0.5, -0.75, 0.25, -0.5, 0.0, -0.75, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, -1.0, 0.5, -1.0, -0.75, 0.25, -0.25, 0.25, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, -0.25, -0.25, 0.5, 0.25, 1.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, 0.5, 0.75, -0.25, -0.25, 0.0, 1.0, -0.75, -0.75, 0.75, 1.0, 0.5, -0.25, -0.5, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.5, -0.75, 0.75, 1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, 0.5, 1.0, -0.25, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, -1.0, -1.0, -1.0, -0.5, -0.75, 0.0, 1.0, -0.5, -0.5, 0.5, ]);
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    device40.pushErrorScope("validation");
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer400 = command_encoder400.finish();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    const array12 = new Float32Array([0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 0.75, 0.5, -0.25, -0.25, -1.0, -0.75, 1.0, 0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, -1.0, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -0.25, -0.5, -0.75, -0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 0.75, -0.75, 0.0, -1.0, 0.5, 1.0, 1.0, 0.75, 0.0, -0.75, -1.0, 1.0, -0.25, 0.0, -0.5, 0.0, -0.5, -0.5, -1.0, 0.75, 0.5, -0.25, -0.5, 0.75, 0.0, -0.5, 0.25, 0.75, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, 0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 0.0, -0.75, 1.0, -0.25, 0.5, -0.25, -0.5, ]);
    
    const array13 = new Float32Array([0.0, 0.0, 0.75, 0.25, 0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, -0.75, 0.25, 0.0, -0.5, 0.75, 1.0, -1.0, -0.5, 0.0, 0.5, 0.0, 0.0, 0.75, 0.0, 0.75, 0.25, -0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 1.0, 0.25, 0.5, -0.5, 1.0, 0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.75, -1.0, -1.0, 0.0, -0.5, -0.25, -0.5, -0.75, 1.0, 0.25, 0.0, 0.25, 0.75, 0.5, 0.75, -0.5, 0.25, 0.5, -0.75, 0.5, 0.0, 0.75, 0.0, 0.0, -0.25, -0.5, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 1.0, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, 0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.5, ]);
    device40.destroy();
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture300.destroy();
    device00.destroy();
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    texture100.destroy();
    
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    const array14 = new Float32Array([0.5, -0.5, 0.5, -1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.0, 0.75, 0.5, 1.0, -0.25, -0.75, 0.5, -0.5, 0.0, 0.5, 0.75, -0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 0.75, -1.0, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 0.0, 0.0, 0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.75, 1.0, -0.25, -0.75, 0.75, 1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -0.5, -1.0, 0.25, -0.75, 0.0, -0.75, 0.5, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 0.5, 0.5, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, -0.5, -0.5, 0.0, -1.0, 0.25, -0.75, 0.75, 0.5, ]);
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device00.destroy();
    
    
    device60.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const array15 = new Float32Array([0.75, 0.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -0.25, -0.5, 0.25, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, 0.5, -0.5, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.5, 0.25, -1.0, 0.0, 0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 0.5, 0.25, 0.25, -1.0, 1.0, -1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.25, -1.0, -0.75, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, -1.0, 0.0, -0.75, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array16 = new Float32Array([0.0, 1.0, -0.5, -0.5, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, -0.5, -0.5, 0.5, 0.25, 1.0, 0.75, 0.75, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, 0.75, -0.75, -0.5, -0.75, 0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -1.0, 1.0, 0.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 1.0, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 0.75, 1.0, 0.0, 0.5, 0.75, 0.0, 1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.0, 0.5, 0.25, -0.25, 0.25, 0.0, 0.25, -0.75, -0.5, 1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 0.25, -0.75, ]);
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    command_encoder600.popDebugGroup()
    const array17 = new Float32Array([1.0, 0.75, 0.25, 0.75, -0.5, -0.25, -0.75, 1.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.25, 0.0, 0.5, -0.25, -0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -1.0, -0.25, 0.25, 0.75, 0.25, 0.25, 0.25, -0.5, -0.25, 0.5, -0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.5, 0.25, 0.75, 0.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, -0.5, -0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, 0.75, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device00.destroy();
    buffer602.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_buffer600 = command_encoder600.finish();
    buffer602.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer601.destroy()
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    query600.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    query600.destroy()
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.destroy();
    device60.pushErrorScope("out-of-memory");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    
    
    buffer600.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    query400.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query600.destroy()
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeTexture({ texture: texture900 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device50.destroy();
    texture900.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder900.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.setPipeline(render_pipeline603);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    query901.destroy()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query401.destroy()
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device90.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device60.pushErrorScope("validation");
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const command_buffer401 = command_encoder401.finish();
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device80.pushErrorScope("internal");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    command_encoder800.insertDebugMarker("mymarker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query901.destroy()
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
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
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
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
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    command_encoder601.copyTextureToBuffer(
        {
            texture: texture600
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
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    compute_pass_encoder6010.setPipeline(compute_pipeline6010);
    const command_buffer801 = command_encoder801.finish();
    render_bundle_encoder002.setPipeline(render_pipeline001);
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
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder800.popDebugGroup();
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture602.destroy();
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
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
    device90.queue.writeBuffer(buffer900, 0, array17, 0, array17.length);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device80.queue.submit([command_buffer801, ]);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query602
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    texture601.destroy();
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    texture602.destroy();
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    query602.destroy()
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    command_encoder900.insertDebugMarker("mymarker");
    const array18 = new Float32Array([0.5, 0.75, -0.75, 0.0, 1.0, 0.25, -0.25, 1.0, -1.0, -0.5, 0.75, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, -1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, -0.75, -0.75, 1.0, -0.25, 0.75, 0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -0.25, 1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.75, 0.5, 0.5, -0.5, -0.5, 0.75, 0.25, 0.25, -0.25, 1.0, 0.5, 0.5, -0.5, 0.5, -0.25, 0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.5, 1.0, -0.75, -1.0, -0.75, -1.0, -0.25, -0.75, 0.5, -0.75, -1.0, 0.25, 0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -1.0, 0.0, ]);
    
    
    render_pass_encoder6010.setPipeline(render_pipeline608);
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout601,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    query900.destroy()
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    
    render_bundle_encoder801.popDebugGroup();
    
    
    
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout605,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout608,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    command_encoder900.insertDebugMarker("mymarker");
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    query900.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout608,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout605,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    command_encoder900.insertDebugMarker("mymarker");
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    buffer900.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout607,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline608.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group601);
    
    
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setVertexBuffer(0, buffer600);
    {
        await buffer605.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer605.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer605.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device90.queue.submit([]);
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer604.destroy()
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    render_bundle_encoder600.draw(3);
    device80.queue.writeTexture({ texture: texture800 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout607,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer606, 0, array13, 0, array13.length);
    
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device90.pushErrorScope("out-of-memory");
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6010.setVertexBuffer(0, buffer600);
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
        layout: compute_pipeline6010.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group602);
    render_pass_encoder6010.draw(3);
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline6010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group603);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6011, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6011, 0);
    device80.queue.submit([command_buffer801, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6010.end();
    compute_pass_encoder6010.end();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder6010.end();
    render_pass_encoder6010.popDebugGroup();
    const command_buffer601 = command_encoder601.finish();
    device90.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer802 = command_encoder802.finish();
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    device60.queue.submit([command_buffer602, ]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer601, ]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([]);
    render_pass_encoder6010.drawIndirect(buffer608, 0);
    device60.queue.submit([command_buffer601, ]);
    command_encoder800.popDebugGroup()
    device80.queue.submit([]);
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline6010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group604);
    device80.queue.submit([command_buffer801, command_buffer802, ]);
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline6010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group605);
    device80.queue.submit([command_buffer802, ]);
    device90.queue.submit([command_buffer900, ]);
}