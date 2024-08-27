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
    
    
    const array0 = new Float32Array([0.25, 0.25, -0.75, -0.25, 1.0, 0.25, 0.25, -1.0, 0.75, 0.25, 0.75, -0.5, -0.25, -1.0, -0.5, 0.5, 0.75, 0.25, -0.25, 1.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.5, -0.75, 0.5, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, 0.25, -0.5, -0.75, -0.75, -1.0, 0.5, 0.0, 0.25, -0.75, 1.0, 0.25, 0.5, 0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, 0.75, -1.0, -0.75, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.75, 0.0, -0.5, 0.0, 1.0, -0.75, -0.25, 0.75, -0.25, -1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, 0.25, -0.5, -0.75, 0.0, 1.0, -1.0, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, -1.0, ]);
    
    
    const array1 = new Float32Array([-0.25, -0.25, 0.5, 0.0, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -0.5, -0.5, 0.5, -0.75, 0.25, -1.0, 0.5, 0.0, 1.0, -0.5, 0.5, -0.5, -1.0, -0.75, -1.0, -0.5, -0.75, -0.75, 0.0, -0.25, 0.75, -0.75, -0.25, -0.5, -0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.5, 0.5, -0.25, -1.0, 0.0, 0.5, -1.0, -0.75, 0.75, -0.25, 0.25, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.75, -0.5, 0.0, -0.5, 0.0, 0.0, 0.25, 0.25, 1.0, 0.0, -0.25, 0.0, 0.0, 0.25, 1.0, -1.0, 1.0, -1.0, -1.0, 0.0, -0.75, 0.25, 0.5, 0.75, 0.25, 0.75, -1.0, 0.75, 0.75, 0.25, ]);
    const array2 = new Float32Array([1.0, -0.5, 0.75, 1.0, 0.75, 0.0, 0.75, -1.0, 1.0, 1.0, 0.0, -0.25, -0.25, 0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, -0.75, -1.0, -0.75, 0.5, -0.75, 0.25, 0.75, -1.0, -1.0, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, 0.5, 1.0, 0.25, -0.75, 1.0, 0.25, -0.25, 1.0, 0.25, -0.5, -1.0, 0.25, 0.75, 1.0, 0.0, -1.0, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -1.0, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -0.25, -1.0, -0.5, 0.25, 0.0, -0.25, 0.25, -0.5, -0.25, -1.0, -0.5, 0.75, 0.75, 0.25, 0.25, 1.0, -1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const array3 = new Float32Array([1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.5, -0.75, -0.5, -0.25, 1.0, 1.0, 1.0, 0.0, -1.0, 0.75, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, -0.25, -0.25, 0.0, 0.25, -0.5, -0.75, -0.5, -0.25, -1.0, 0.5, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -0.5, 0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 0.75, 0.5, -0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.5, 0.25, 0.0, -0.5, 0.75, -0.25, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, -0.25, -0.75, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, 1.0, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, 0.25, -0.5, 1.0, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, ]);
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.5, -0.75, 0.25, 0.5, -0.75, 0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 0.75, 1.0, -0.75, -0.5, 1.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.5, -0.75, -0.75, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.75, 0.25, 1.0, 1.0, -0.5, -1.0, -1.0, -0.75, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, -0.25, -1.0, -0.5, -0.5, -0.75, -0.75, -0.25, 0.0, 0.5, -0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, 0.25, -0.75, 0.25, -0.5, 1.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.75, 0.5, -0.25, -0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, 1.0, -0.5, -1.0, -0.5, -0.25, -1.0, -0.75, -0.5, -0.75, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array5 = new Float32Array([-1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, 1.0, 0.25, -0.25, 0.75, -0.25, -0.5, 0.5, 1.0, -0.75, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, -0.25, -0.75, 0.75, 0.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.0, 1.0, -0.25, 1.0, 0.75, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, -0.5, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.0, 0.5, -0.5, 0.75, 1.0, 1.0, 0.0, -1.0, -0.75, -0.25, ]);
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array6 = new Float32Array([0.75, -0.75, -1.0, -0.25, -0.75, 0.25, -0.75, -0.25, 0.5, 0.5, 0.0, -0.75, 0.5, 0.25, -0.5, 0.0, 0.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, -0.25, 0.25, 0.0, -0.25, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 0.25, 0.5, 0.0, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 0.0, -1.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 0.5, -1.0, 0.0, -0.25, 0.25, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, -0.5, 0.0, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, -0.25, 1.0, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, 0.75, 1.0, 0.5, 0.5, -0.5, -0.25, 0.0, -0.5, 0.0, 1.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device20.destroy();
    
    
    
    
    const array7 = new Float32Array([0.75, -0.75, -1.0, 0.5, -0.25, 0.5, 0.0, 1.0, -1.0, 0.5, 0.75, -0.5, 0.0, -0.5, 0.5, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, -1.0, -0.75, 0.25, 0.25, 1.0, 0.0, -1.0, 0.0, 0.25, -0.75, -0.5, -0.25, 0.5, 0.5, 0.0, -0.5, 0.75, -0.75, 0.75, -0.5, -0.75, -1.0, 0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, -0.25, -0.75, -0.25, 0.0, -0.75, -0.25, 1.0, 0.25, -0.5, -1.0, 0.0, 0.5, 0.5, 1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array8 = new Float32Array([-0.5, -0.5, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.75, -0.75, 0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -0.75, 0.0, -0.75, 0.75, 0.25, 0.5, -0.5, -0.75, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5, -0.25, 1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -0.25, -0.5, -0.5, -0.25, 0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, -0.5, -1.0, 0.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 0.0, 0.0, 0.75, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer300.destroy()
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.destroy();
    const array9 = new Float32Array([0.75, 1.0, 0.25, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.0, 1.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.5, -0.5, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, -0.5, -0.5, 0.25, 1.0, -0.25, 0.0, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 0.75, 1.0, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.0, 1.0, -0.75, -1.0, -0.25, 0.5, 0.75, 1.0, 0.25, -0.25, 0.25, 0.5, -0.5, -0.75, 0.0, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
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
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.destroy();
    
    
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    
    texture301.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("out-of-memory");
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture801.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture201.destroy();
    command_encoder800.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    device70.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
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
    
    device60.pushErrorScope("internal");
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    texture300.destroy();
    
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder8000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    
    render_bundle_encoder600.popDebugGroup();
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query300.destroy()
    device30.pushErrorScope("internal");
    texture800.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer802.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.popDebugGroup();
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder3000.setPipeline(compute_pipeline303);
    render_bundle_encoder601.popDebugGroup();
    
    buffer803.destroy()
    compute_pass_encoder3000.popDebugGroup()
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
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query302.destroy()
    
    query800.destroy()
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    buffer800.destroy()
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder801.resolveQuerySet(
        query800,
        0,
        32,
        buffer802,
        0
    )
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query301.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query801
    });
    render_pass_encoder8020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.setStencilReference(1);
    
    const command_buffer900 = command_encoder900.finish();
    
    
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    device90.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer1100.destroy()
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder8020.popDebugGroup();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder8020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder6010.setStencilReference(1);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const array10 = new Float32Array([0.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, -0.5, -0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 0.25, 1.0, -0.5, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, -0.25, 0.0, -1.0, 0.0, -0.25, -0.25, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 0.25, 0.25, -1.0, -1.0, 0.75, -1.0, 1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.0, -0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, -0.75, 0.25, -1.0, 1.0, 0.0, -0.75, 0.5, 1.0, 1.0, -0.75, 0.0, -1.0, 0.5, -1.0, 0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.5, -0.75, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.setStencilReference(1);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder8020.setStencilReference(1);
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder8010.executeBundles([])
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder602.insertDebugMarker("marker");
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
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder8020.setPipeline(render_pipeline800);
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    query600.destroy()
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder800.setPipeline(render_pipeline801);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6001.executeBundles([render_bundle_encoder601, ])
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    device80.queue.writeBuffer(buffer804, 0, array9, 0, array9.length);
    render_pass_encoder8010.setStencilReference(1);
    query300.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    {
        await buffer804.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer804.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer804.unmap();
        console.log(new Float32Array(data));
    }
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device60.pushErrorScope("out-of-memory");
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("out-of-memory");
    
    device110.queue.writeBuffer(buffer1101, 0, array8, 0, array8.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder8020.setStencilReference(1);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder6001.setPipeline(render_pipeline600);
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6001.setBindGroup(0, bind_group600);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device110.pushErrorScope("validation");
    
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder8020.pushDebugGroup("group_marker");
    buffer1101.destroy()
    render_pass_encoder6000.setPipeline(render_pipeline600);
    device80.queue.writeBuffer(buffer804, 0, array8, 0, array8.length);
    query300.destroy()
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query302
    });
    
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder6010.executeBundles([])
    command_encoder801.resolveQuerySet(
        query802,
        0,
        32,
        buffer805,
        0
    )
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    command_encoder303.clearBuffer(buffer300);
    render_pass_encoder6000.pushDebugGroup("group_marker");
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer600.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    render_bundle_encoder802.insertDebugMarker("marker");
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6010.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder6010.executeBundles([])
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder8010.setPipeline(render_pipeline801);
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    device70.destroy();
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3011.setPipeline(render_pipeline301);
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder802.setPipeline(render_pipeline801);
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.setStencilReference(1);
    
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer600.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
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
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    render_pass_encoder8010.insertDebugMarker("marker");
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_pass_encoder6010.setPipeline(render_pipeline600);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query302.destroy()
    const array11 = new Float32Array([1.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, 0.5, 1.0, 0.0, 0.0, 0.75, -0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -0.25, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, -1.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, 0.75, -0.5, -1.0, 0.5, -0.5, -0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 1.0, -0.25, -0.5, -0.5, 0.0, -0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 0.75, 0.75, 0.25, 0.75, 0.0, 0.75, 1.0, 0.25, 0.75, -0.25, 1.0, 0.25, 0.0, -0.75, 0.5, 0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 0.75, 0.0, -0.5, ]);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group301);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    query300.destroy()
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6010.popDebugGroup()
    device60.queue.submit([]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder800.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3020.setPipeline(compute_pipeline304);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder3011.endOcclusionQuery()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.setPipeline(render_pipeline301);
    render_pass_encoder8020.popDebugGroup();
    compute_pass_encoder8000.popDebugGroup()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer308, 0);
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6010.setBindGroup(0, bind_group601);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder8020.popDebugGroup()
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer806,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer807,
                },
            },
        ],
    });

    render_pass_encoder8010.setBindGroup(0, bind_group800);
    render_pass_encoder6001.setVertexBuffer(0, buffer602);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    render_pass_encoder3011.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3011.draw(3);
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
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group602);
    render_pass_encoder8020.popDebugGroup();
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder6010.setVertexBuffer(0, buffer601);
    render_pass_encoder3010.setVertexBuffer(0, buffer302);
    render_pass_encoder6010.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder6010.draw(3);
    render_pass_encoder8010.setVertexBuffer(0, buffer805);
    compute_pass_encoder8020.popDebugGroup()
    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer808,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer809,
                },
            },
        ],
    });

    render_pass_encoder8020.setBindGroup(0, bind_group801);
    device50.queue.submit([]);
    render_pass_encoder6010.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder3020.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3011.end();
    render_pass_encoder8010.draw(3);
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder8020.endOcclusionQuery()
    render_pass_encoder3030.setVertexBuffer(0, buffer308);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder6010.end();
    render_pass_encoder3011.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder8020.setVertexBuffer(0, buffer809);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    render_pass_encoder3030.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    const command_buffer303 = command_encoder303.finish();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder8020.draw(3);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    compute_pass_encoder3000.end();
    compute_pass_encoder8020.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group603);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder3011.end();
    render_pass_encoder8010.setIndexBuffer(buffer803, "uint16");
    render_pass_encoder8010.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder8010.setIndexBuffer(buffer803, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder8010.popDebugGroup();
    render_pass_encoder8020.setIndexBuffer(buffer803, "uint16");
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder8020.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder6001.draw(3);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3013, 0);
    render_pass_encoder6000.setVertexBuffer(0, buffer600);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder6000.setIndexBuffer(buffer603, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder3011.end();
    render_pass_encoder6000.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder3000.end();
    render_pass_encoder6001.drawIndirect(buffer601, 0);
    render_pass_encoder8020.popDebugGroup();
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
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group604);
    render_pass_encoder6000.end();
    device110.queue.submit([]);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder8010.setIndexBuffer(buffer803, "uint16");
    render_pass_encoder6010.drawIndexed(3);
    device80.queue.submit([]);
    const command_buffer802 = command_encoder802.finish();
    render_pass_encoder3030.end();
    compute_pass_encoder8020.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder8020.popDebugGroup();
    render_pass_encoder8020.drawIndexed(3);
    render_pass_encoder3011.end();
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder8010.drawIndexedIndirect(buffer803, 0);
    render_pass_encoder3010.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    device80.queue.submit([command_buffer800, ]);
    const command_buffer600 = command_encoder600.finish();
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder6000.drawIndexed(3);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder8020.end();
    render_pass_encoder6010.setIndexBuffer(buffer602, "uint16");
    device80.queue.submit([command_buffer802, ]);
    compute_pass_encoder6010.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder8020.draw(3);
    render_pass_encoder6010.drawIndexed(3);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group308);
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([command_buffer802, ]);
    device110.queue.submit([]);
    render_pass_encoder6010.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder3030.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder6000.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder6010.drawIndexedIndirect(buffer606, 0);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6010, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6010, 0);
    render_pass_encoder6001.setIndexBuffer(buffer607, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder8010.drawIndexed(3);
    render_pass_encoder6001.drawIndexedIndirect(buffer6010, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder6000.end();
    device110.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder6001.drawIndirect(buffer603, 0);
    render_pass_encoder8020.setIndexBuffer(buffer803, "uint16");
    device110.queue.submit([]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3013, 0);
    device30.queue.submit([]);
    render_pass_encoder6000.setIndexBuffer(buffer6010, "uint16");
    render_pass_encoder8010.end();
    compute_pass_encoder3020.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder6000.drawIndirect(buffer6010, 0);
    render_pass_encoder6001.setIndexBuffer(buffer609, "uint16");
    render_pass_encoder6010.draw(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndirect(buffer3018, 0);
    render_pass_encoder3011.draw(3);
    device40.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder6001.drawIndirect(buffer6010, 0);
    render_pass_encoder6010.setIndexBuffer(buffer609, "uint16");
    render_pass_encoder6001.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6000.drawIndexedIndirect(buffer609, 0);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group309);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.drawIndirect(buffer3011, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder6001.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder8010.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder8020.drawIndirect(buffer805, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder8020.end();
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    render_pass_encoder8020.end();
    render_pass_encoder6000.drawIndirect(buffer600, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder6010.drawIndexedIndirect(buffer6010, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    compute_pass_encoder6010.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3024, 0);
    device30.queue.submit([]);
    render_pass_encoder6010.draw(3);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    render_pass_encoder8020.setIndexBuffer(buffer809, "uint16");
    render_pass_encoder6001.drawIndexedIndirect(buffer605, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.popDebugGroup();
    device110.queue.submit([]);
    render_pass_encoder6010.drawIndexed(3);
    render_pass_encoder3010.end();
    render_pass_encoder8010.end();
    render_pass_encoder6010.drawIndirect(buffer601, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    device80.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder6000.drawIndexed(3);
    compute_pass_encoder3020.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer600, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder6001.drawIndirect(buffer605, 0);
    render_pass_encoder3011.end();
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group605);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder3030.draw(3);
    render_pass_encoder8010.end();
    render_pass_encoder6010.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    render_pass_encoder3011.setIndexBuffer(buffer304, "uint16");
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    render_pass_encoder3030.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder8010.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6010.drawIndexedIndirect(buffer6010, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3011);
    render_pass_encoder8020.drawIndirect(buffer800, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6000.drawIndexedIndirect(buffer6010, 0);
    render_pass_encoder8010.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder6000.drawIndexedIndirect(buffer609, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder6000.drawIndirect(buffer6010, 0);
    render_pass_encoder6000.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    device110.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    compute_pass_encoder8020.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder6001.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder8020.popDebugGroup();
    render_pass_encoder8020.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6010.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder3030.drawIndirect(buffer3025, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3013, 0);
    device30.queue.submit([]);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder8010.drawIndexed(3);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3030, 0);
    device60.queue.submit([]);
    render_pass_encoder3030.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder6000.drawIndexed(3);
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3011.drawIndirect(buffer3010, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer601, ]);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder8000.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3031, 0);
    device80.queue.submit([command_buffer800, ]);
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
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group606);
    render_pass_encoder8020.drawIndexed(3);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder3030.end();
    render_pass_encoder6010.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder8010.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer308, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3019, "uint16");
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    compute_pass_encoder8000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder8020.popDebugGroup();
    render_pass_encoder6001.drawIndirect(buffer6012, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder6001.end();
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6001.draw(3);
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder3011.drawIndirect(buffer3030, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder3011.drawIndirect(buffer3011, 0);
    render_pass_encoder8010.end();
    render_pass_encoder6010.drawIndexedIndirect(buffer609, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3036, 0);
    render_pass_encoder6001.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer3030, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3026, 0);
    device60.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder3011.end();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder6000.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder6000.drawIndirect(buffer6013, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer301, ]);
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    device90.queue.submit([]);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder8020.setIndexBuffer(buffer803, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder6001.drawIndirect(buffer6013, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
    render_pass_encoder6010.drawIndexedIndirect(buffer608, 0);
    device80.queue.submit([command_buffer802, ]);
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder6000.popDebugGroup();
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder3011.drawIndirect(buffer3015, 0);
    render_pass_encoder3011.drawIndirect(buffer3030, 0);
    render_pass_encoder3010.drawIndirect(buffer3034, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8010.setIndexBuffer(buffer803, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3011.drawIndirect(buffer3015, 0);
    render_pass_encoder6010.draw(3);
    device30.queue.submit([command_buffer303, ]);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6015, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6015, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder8020.setIndexBuffer(buffer805, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3011.drawIndirect(buffer3036, 0);
    render_pass_encoder3030.drawIndirect(buffer3036, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder8020.end();
    render_pass_encoder6010.drawIndexedIndirect(buffer6014, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3038, "uint16");
    device110.queue.submit([]);
    render_pass_encoder8010.setIndexBuffer(buffer807, "uint16");
    render_pass_encoder8010.end();
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder8010.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder8020.drawIndirect(buffer802, 0);
    compute_pass_encoder8020.popDebugGroup()
    device110.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder6001.drawIndexedIndirect(buffer6010, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder6001.drawIndexedIndirect(buffer6010, 0);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3011.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6001.end();
    render_pass_encoder8010.draw(3);
    compute_pass_encoder3020.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder8020.drawIndirect(buffer801, 0);
    device80.queue.submit([]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder8020.draw(3);
    render_pass_encoder6010.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder6000.setIndexBuffer(buffer6013, "uint16");
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3016);
    render_pass_encoder6001.drawIndexedIndirect(buffer6015, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6017,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group607);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3041, 0);
    compute_pass_encoder6010.popDebugGroup()
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3017);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder8020.setIndexBuffer(buffer806, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
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
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group608);
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.drawIndirect(buffer3036, 0);
    render_pass_encoder3010.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder6010.end();
    render_pass_encoder3010.drawIndirect(buffer3041, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer6018, 0);
    compute_pass_encoder8020.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3030.drawIndirect(buffer3036, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3040, 0);
    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3047,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3018);
    render_pass_encoder3010.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder8010.draw(3);
    render_pass_encoder6010.drawIndexedIndirect(buffer603, 0);
    render_pass_encoder6000.setIndexBuffer(buffer6010, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder8020.setIndexBuffer(buffer804, "uint16");
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6000.drawIndirect(buffer6015, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder6010.drawIndexed(3);
    compute_pass_encoder3020.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer6010, 0);
    device80.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder8000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder8010.setIndexBuffer(buffer807, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder6001.drawIndirect(buffer6015, 0);
    render_pass_encoder3030.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer3038, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder6001.drawIndirect(buffer607, 0);
    render_pass_encoder6000.drawIndirect(buffer6010, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3041, 0);
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder6001.drawIndirect(buffer609, 0);
    render_pass_encoder6000.end();
    render_pass_encoder8020.setIndexBuffer(buffer808, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3032, "uint16");
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6020, 0);
    compute_pass_encoder8020.popDebugGroup()
    render_pass_encoder6010.drawIndirect(buffer6012, 0);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3033, 0);
    device80.queue.submit([command_buffer801, command_buffer802, ]);
    render_pass_encoder6000.end();
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder3010.drawIndirect(buffer3041, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6010.draw(3);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group609);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6010.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder6000.drawIndirect(buffer604, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3030, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3048, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3048, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder6000.drawIndirect(buffer6010, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer308, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3031, 0);
    device40.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer3029, 0);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3019);
    render_pass_encoder3010.drawIndirect(buffer3041, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3029, 0);
    device80.queue.submit([]);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3030.drawIndirect(buffer3021, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder8020.drawIndirect(buffer801, 0);
    render_pass_encoder6000.drawIndirect(buffer6015, 0);
    render_pass_encoder6010.end();
    render_pass_encoder3011.drawIndirect(buffer3029, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3049, "uint16");
    device30.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder6001.drawIndirect(buffer6020, 0);
    render_pass_encoder6000.end();
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    device110.queue.submit([]);
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3020);
    render_pass_encoder8020.setIndexBuffer(buffer802, "uint16");
    render_pass_encoder8010.popDebugGroup();
    render_pass_encoder6000.end();
    render_pass_encoder8020.end();
    device60.queue.submit([]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder8010.end();
    render_pass_encoder8020.drawIndirect(buffer807, 0);
    render_pass_encoder6001.drawIndirect(buffer6015, 0);
    render_pass_encoder6010.setIndexBuffer(buffer608, "uint16");
    render_pass_encoder8010.drawIndirect(buffer804, 0);
    render_pass_encoder6001.drawIndirect(buffer6015, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6000.drawIndexedIndirect(buffer6010, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder6000.end();
    render_pass_encoder6000.drawIndirect(buffer6015, 0);
    render_pass_encoder6000.drawIndexed(3);
    compute_pass_encoder3000.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer602, 0);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder8020.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder6010.drawIndirect(buffer6010, 0);
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3021);
    render_pass_encoder8020.drawIndexedIndirect(buffer809, 0);
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer303, ]);
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder8020.drawIndexedIndirect(buffer803, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer3054, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3011, 0);
    render_pass_encoder8010.drawIndexedIndirect(buffer803, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder6001.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3028, "uint16");
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder8010.drawIndexed(3);
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6010);
    render_pass_encoder3011.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3030.end();
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3022);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6010.end();
    render_pass_encoder3011.drawIndirect(buffer3031, 0);
    compute_pass_encoder8020.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer300, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder8020.drawIndexedIndirect(buffer808, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3042, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3023);
    render_pass_encoder8010.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer3041, 0);
    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3060,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3024);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3061, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3061, 0);
    render_pass_encoder6001.drawIndirect(buffer6024, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer6012, 0);
    render_pass_encoder6010.drawIndexedIndirect(buffer601, 0);
    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3063,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3025);
    render_pass_encoder3011.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder8020.drawIndexedIndirect(buffer800, 0);
    render_pass_encoder6001.drawIndexedIndirect(buffer6024, 0);
    render_pass_encoder8010.end();
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
}