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
    
    const array0 = new Float32Array([0.25, 0.0, -0.75, -0.25, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.25, -0.75, -1.0, 1.0, -0.5, -1.0, 1.0, 0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, 0.5, -0.5, 0.0, -0.25, 0.75, 0.0, 1.0, 0.5, 0.25, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.25, 0.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, -0.25, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, 0.0, -0.75, 0.5, -0.25, -1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.75, -1.0, 0.0, 0.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.75, 0.5, -1.0, 1.0, 1.0, ]);
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.5, -1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -0.25, -1.0, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, -1.0, -0.75, -0.5, -0.25, 0.75, 1.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.5, -0.25, 0.5, -0.5, -0.75, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 0.0, -0.75, 0.75, -0.25, -0.75, -0.25, -0.5, 1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 0.0, 0.5, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 0.25, 0.25, 0.25, -0.5, -0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    
    
    const array2 = new Float32Array([0.75, 0.25, -0.75, -1.0, 0.5, 1.0, 0.75, -0.5, -1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, 1.0, 0.25, -0.25, 1.0, 1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, 1.0, -0.25, -0.5, -1.0, 0.0, 0.25, -0.75, 0.0, -0.25, -1.0, 0.75, 0.25, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, 0.75, 0.75, -0.5, -0.75, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, -1.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 0.5, ]);
    const array3 = new Float32Array([-0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.75, 1.0, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, -0.5, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, 0.0, 0.25, -0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.25, 1.0, -1.0, -0.25, 0.75, -1.0, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, -0.75, 0.0, -0.5, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, -0.5, 1.0, 0.25, -0.75, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const array4 = new Float32Array([1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 0.25, -0.75, 0.75, -0.5, 0.0, 1.0, 1.0, -1.0, 0.75, 0.75, 1.0, -0.75, 0.25, -0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 0.25, -0.5, 0.75, -1.0, -0.25, 0.0, 0.25, -0.5, -1.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.25, 1.0, -0.75, -0.75, -0.5, 0.25, -0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, 0.5, -0.25, -0.75, -0.75, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, -0.25, -0.5, -0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -0.25, -1.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.25, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.75, 0.75, -0.75, -0.75, 0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 0.75, 0.5, 0.0, 0.0, 0.25, 0.0, 1.0, -0.25, 1.0, -1.0, 0.75, 0.25, -1.0, -0.5, 0.25, -0.5, 0.25, 1.0, -0.25, -1.0, 1.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, -0.25, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.25, -0.25, 0.5, -1.0, 0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 0.5, 0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 1.0, 0.0, 1.0, -0.75, -0.25, -0.25, -0.5, 0.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.5, 1.0, -0.5, -1.0, 0.25, -0.75, 0.75, -0.25, 0.0, -1.0, 0.5, 0.25, -0.5, -1.0, -0.75, -1.0, ]);
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
    const array6 = new Float32Array([0.75, 0.0, 0.5, 0.75, -1.0, 0.5, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, -0.5, 1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 1.0, 0.75, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.25, 0.5, -0.75, 0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.0, -0.75, -0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 0.0, 0.75, 0.0, -0.25, 0.75, 0.25, -0.75, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, -0.75, 0.5, 0.0, -0.25, -0.25, 0.25, ]);
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const array7 = new Float32Array([-1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.5, 0.25, 0.0, 0.0, 0.75, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.75, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, -0.5, 0.0, -0.25, -1.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.5, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, 0.75, 0.25, 0.25, -0.25, 0.25, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, -1.0, -0.75, 0.0, 0.5, -0.5, 0.5, 0.25, 1.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.25, 1.0, -0.25, -0.5, 0.25, ]);
    device30.destroy();
    
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("validation");
    
    const array8 = new Float32Array([-0.5, 0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 1.0, -1.0, -0.25, -1.0, 1.0, 1.0, 0.25, 0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 1.0, 0.5, 0.5, -0.25, -0.25, 1.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 1.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.25, -0.5, -0.75, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, 0.0, 0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.75, 0.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device60.pushErrorScope("internal");
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture201.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const array9 = new Float32Array([0.25, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.75, -0.75, 0.25, 0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 0.25, 0.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, 0.0, -0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, 0.5, -0.25, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.5, 1.0, 0.75, 0.0, 0.25, -0.75, ]);
    query400.destroy()
    
    
    const array10 = new Float32Array([0.75, 1.0, -0.25, 1.0, -1.0, 1.0, 0.0, 0.0, 1.0, 1.0, -0.75, -0.25, -0.25, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 0.5, 0.25, 0.5, 0.0, -0.75, -0.75, 0.75, -1.0, 1.0, 0.0, 0.0, -1.0, 0.5, 0.5, -0.75, 1.0, 0.0, 0.0, -1.0, -0.5, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, -0.75, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 0.0, 1.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.0, 0.75, -0.75, 0.0, 0.5, -1.0, 0.0, 0.5, -0.5, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, ]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    query400.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query201.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const array11 = new Float32Array([1.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, -0.5, -0.25, 0.0, 1.0, -0.5, 1.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.5, -0.25, 0.25, 0.75, -0.75, 1.0, 0.25, -0.75, 0.75, -0.75, -0.75, -1.0, 1.0, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -1.0, -0.75, -0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, -0.75, 1.0, 0.0, 1.0, -0.75, 0.25, -0.75, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, -0.25, 0.25, -0.25, 0.0, -0.75, -0.5, 0.25, -0.25, 1.0, 0.0, 0.0, -0.25, 0.5, -0.75, 0.0, 0.5, 1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.0, -0.75, ]);
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    query400.destroy()
    device70.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
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
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query402.destroy()
    
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
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
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
    
    
    query201.destroy()
    query202.destroy()
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    query401.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device90.destroy();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([0.75, -0.25, 1.0, -0.75, -0.5, -0.25, -0.5, -0.5, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.5, -0.25, 0.0, -0.5, -1.0, -1.0, -0.5, 0.75, -0.5, 1.0, -0.25, -0.25, -0.25, 0.5, 1.0, -0.75, -0.5, 0.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, 0.0, 0.75, 1.0, -0.25, 0.75, -1.0, 0.75, 0.0, -0.5, -0.5, -0.5, 0.0, -0.5, 0.0, 1.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.25, 0.5, 0.5, -0.25, -0.5, -0.75, 0.75, 0.75, 0.5, 0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, -0.75, ]);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    
    
    
    
    texture801.destroy();
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device60.destroy();
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    device80.pushErrorScope("internal");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query403.destroy()
    
    const array13 = new Float32Array([-1.0, 0.0, 0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -1.0, -1.0, -0.25, 1.0, 0.75, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 1.0, -0.5, 0.25, 1.0, 0.75, -1.0, -0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -1.0, -0.25, -1.0, -0.5, -0.5, -0.25, -1.0, -1.0, -0.25, -0.25, 1.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.25, 0.75, -0.25, -0.75, 0.0, -1.0, -0.25, -1.0, -0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.25, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 0.0, 0.5, -0.75, -0.5, -1.0, 1.0, -1.0, 0.5, 0.5, -0.75, 0.0, -0.75, -0.75, 0.75, 1.0, ]);
    query400.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query402.destroy()
    
    
    query403.destroy()
    
    
    query402.destroy()
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query400.destroy()
    query800.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    query402.destroy()
    query800.destroy()
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture803.destroy();
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
    
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    query401.destroy()
    
    query403.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query401.destroy()
    device40.pushErrorScope("out-of-memory");
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("internal");
    query801.destroy()
    const texture_view8050 = texture805.createView({ label: "texture_view8050" });
    const texture_view8002 = texture800.createView({ label: "texture_view8002" });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const texture_view8003 = texture800.createView({ label: "texture_view8003" });
    
    
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    query400.destroy()
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device100.destroy();
    query401.destroy()
    
    
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    query801.destroy()
    const texture_view8041 = texture804.createView({ label: "texture_view8041" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture805.destroy();
    texture800.destroy();
    
    
    
    
    query800.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    texture802.destroy();
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    query801.destroy()
    device80.destroy();
    
    
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    texture400.destroy();
    
    
    query404.destroy()
    const array14 = new Float32Array([-0.5, 0.5, -0.75, 0.25, 0.5, 0.25, 0.0, -0.5, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -1.0, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 1.0, 1.0, -0.25, -0.75, 0.5, -0.25, -1.0, 0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -1.0, -0.75, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 1.0, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, 0.25, 0.75, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, 1.0, -0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.0, -0.5, ]);
    
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query404.destroy()
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    query403.destroy()
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    query402.destroy()
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device110.destroy();
    
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    texture403.destroy();
    
    query402.destroy()
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    texture401.destroy();
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    
    
    query407.destroy()
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query404.destroy()
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    device120.destroy();
    query407.destroy()
    query407.destroy()
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    query405.destroy()
    texture402.destroy();
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array15 = new Float32Array([1.0, 0.75, -1.0, 0.5, 0.25, 0.0, 0.25, 0.5, 0.25, -1.0, 1.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.75, 0.75, -1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.25, -0.5, 1.0, 0.75, -0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.75, -0.25, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.75, -0.25, 0.5, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, -0.5, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -0.75, 1.0, 1.0, -0.5, 0.0, 0.5, -1.0, 0.5, 0.5, -0.5, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.75, 0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.5, ]);
    
    
    
    
    
    const array16 = new Float32Array([0.25, -1.0, 0.0, -0.75, 1.0, 0.25, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, -1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, 1.0, -0.5, -0.25, -0.25, 1.0, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, 0.5, -1.0, 0.5, 0.0, -0.5, 1.0, 0.5, -0.25, -0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 0.25, -1.0, -1.0, 0.5, -0.25, 1.0, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, -0.25, -1.0, -0.75, -0.75, -1.0, -0.5, -1.0, 0.25, -0.25, 0.0, -0.25, -1.0, 0.5, 0.75, ]);
    
    const array17 = new Float32Array([-0.75, -0.75, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, -0.75, 1.0, -0.75, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, 0.5, 0.5, 0.5, 0.5, 0.0, -1.0, 0.5, 0.5, 0.75, -0.25, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 1.0, 0.0, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, -0.75, 1.0, 1.0, 0.0, 0.75, -1.0, -1.0, -1.0, 0.25, 0.75, 0.0, 0.0, -0.5, 0.75, 0.25, 0.5, -0.75, 1.0, 0.5, -0.25, 0.25, -0.75, 1.0, -0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.5, -0.25, 0.75, 0.0, -0.25, -1.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.destroy();
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const array18 = new Float32Array([-0.75, -0.5, 0.75, -1.0, 0.0, -1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.0, -0.25, 0.0, -0.75, 0.0, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, 1.0, 0.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.25, 0.0, 0.25, -0.5, 0.5, -1.0, -0.75, 0.25, 0.75, 0.5, 1.0, -1.0, -0.75, 0.5, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, -0.75, -0.75, 0.0, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 0.25, 1.0, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.5, -0.75, 0.25, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -1.0, 0.25, 1.0, 0.75, -0.25, -0.5, -1.0, 0.5, 1.0, ]);
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    
    
    
    
    
    const array19 = new Float32Array([-1.0, 0.0, 1.0, -0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -0.75, 0.75, 0.75, -0.25, -0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.0, 0.75, 0.0, -1.0, -0.25, 0.75, 0.75, 0.5, 0.75, -1.0, -1.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.75, 0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -0.5, 0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.25, -0.5, -1.0, 0.25, -0.25, -1.0, ]);
    
    device150.pushErrorScope("out-of-memory");
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}