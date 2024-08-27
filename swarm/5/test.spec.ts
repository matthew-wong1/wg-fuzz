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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([1.0, 0.5, 0.25, 0.25, -1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.25, -0.75, 0.25, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, -0.25, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, -1.0, -0.5, 0.75, 0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, -0.5, 0.5, 0.0, -1.0, -0.5, 0.75, -0.5, -0.25, -1.0, 0.75, -1.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -1.0, -0.25, -0.75, 0.5, -1.0, 0.5, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, 0.0, -1.0, -0.75, -0.5, -1.0, 1.0, 0.5, 0.75, -1.0, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.25, 0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([-0.25, -0.5, 0.25, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.75, 1.0, -0.25, -0.75, 1.0, -1.0, 0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 1.0, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, 1.0, -0.75, -0.75, 0.25, 0.0, 0.0, 0.0, -0.75, -1.0, 1.0, 0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -1.0, 0.75, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.5, 0.0, 1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.0, -0.25, -0.5, 1.0, 1.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.5, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    
    
    
    
    
    
    const array2 = new Float32Array([0.25, 0.75, -0.5, -0.25, 0.75, 0.5, 1.0, 0.75, 0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, -0.25, -0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -0.75, -0.75, 0.75, -1.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.5, 0.75, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 0.0, 0.5, -1.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.5, -0.5, -0.25, -0.75, -0.5, 0.25, 1.0, -0.75, 0.75, -0.75, -0.75, 0.25, 0.5, 0.5, -0.5, 0.5, -1.0, -0.25, 0.25, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.0, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.75, ]);
    
    
    
    const array3 = new Float32Array([-1.0, 0.75, 0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.0, -1.0, -0.5, -1.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.25, 0.0, -0.75, -0.25, 0.0, 0.0, 1.0, 0.75, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, -0.75, -0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 1.0, -0.75, 0.75, -0.75, -1.0, 0.75, -0.75, -0.75, 0.75, 1.0, -0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.5, 0.25, 0.25, -0.75, 1.0, -0.75, -0.75, 0.5, 1.0, 1.0, -0.5, 0.25, 0.0, -0.75, -0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    
    
    device20.pushErrorScope("internal");
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device20.destroy();
    
    
    
    const array4 = new Float32Array([0.0, 0.75, 0.5, 0.0, 0.0, -0.5, -1.0, -0.25, -0.5, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, 1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 0.75, 1.0, 1.0, 0.25, 0.5, -0.75, 0.5, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, -0.5, -0.5, 0.25, 1.0, 0.75, 0.25, 0.25, -0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -0.75, 0.0, 0.0, 0.75, 1.0, 0.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.75, 0.5, 0.25, -1.0, -0.5, 0.75, -0.25, 0.0, -0.5, -1.0, -0.5, 0.25, 0.0, -0.75, ]);
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.5, -0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 0.75, 0.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.75, 1.0, 0.25, 0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, -1.0, -0.75, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 0.25, 0.75, 0.75, 0.5, -0.25, -1.0, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 0.75, 0.25, -0.25, -0.75, 1.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, 0.0, 0.0, 0.5, 0.5, 0.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([-0.5, -0.75, -1.0, -0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 1.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.5, -0.25, 0.5, -1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, -0.75, -0.5, 0.0, -1.0, -1.0, -0.75, -1.0, 1.0, -0.5, -0.75, -0.5, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.25, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.5, -0.25, -0.5, 0.5, -1.0, 0.5, -0.75, -0.75, 0.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.25, -1.0, 0.0, 0.0, ]);
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([0.75, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, -0.25, -0.25, 0.5, 0.25, -1.0, 0.25, 0.0, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 0.5, 1.0, 0.25, 0.0, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, -1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 1.0, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, 0.5, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, 0.75, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, -0.25, 0.25, -0.25, 0.0, 0.75, -1.0, -1.0, 0.0, 1.0, 0.25, -1.0, 0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 0.25, -0.5, 0.75, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const array8 = new Float32Array([1.0, -0.75, 1.0, 1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, -0.75, 0.0, 0.25, -0.25, 0.5, -0.5, 0.5, 0.0, -1.0, 0.75, -1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.5, 0.25, -0.5, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, 0.75, 0.5, 0.25, -0.75, 1.0, -0.25, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -0.5, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.25, 1.0, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, -0.75, 0.5, 0.5, 0.0, -1.0, -0.25, 1.0, -1.0, 1.0, 1.0, 0.25, -0.25, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.25, -1.0, 1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, -0.25, 0.0, -0.25, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture701.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([0.75, 0.5, -0.5, 0.5, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, -0.5, -0.75, -0.5, -0.25, -0.25, 0.5, 0.75, 0.0, 1.0, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, 0.75, -0.75, 0.25, 0.5, 0.0, 0.5, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -0.25, -0.75, -0.75, -0.75, 0.0, -0.25, 0.0, 0.25, -0.75, 1.0, -1.0, -0.25, 0.75, 0.25, 0.0, 0.0, -0.75, -0.75, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 1.0, -1.0, -0.5, 0.0, ]);
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
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
    
    texture700.destroy();
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
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device60.pushErrorScope("out-of-memory");
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
    
    device70.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device30.destroy();
    
    device90.pushErrorScope("out-of-memory");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    device90.queue.writeTexture({ texture: texture901 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    texture501.destroy();
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    device90.queue.writeTexture({ texture: texture901 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    
    device80.destroy();
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    texture601.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    
    device90.queue.writeTexture({ texture: texture901 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
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
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device90.destroy();
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    texture600.destroy();
    texture1000.destroy();
    device100.pushErrorScope("out-of-memory");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device40.pushErrorScope("out-of-memory");
    
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout603]
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    texture602.destroy();
    texture1001.destroy();
    render_bundle_encoder1001.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const array10 = new Float32Array([0.5, 0.25, -1.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 0.0, -0.5, 0.5, -0.75, 0.75, 0.5, -0.5, 0.25, 0.5, -0.5, -0.5, -1.0, 0.5, 0.0, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, -0.5, -0.75, -1.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 1.0, -0.75, -0.5, 0.0, 0.0, -0.5, -0.25, -0.75, 0.5, -0.5, -0.5, 0.75, 1.0, -0.25, 0.5, -0.5, 0.75, 0.0, -0.25, 0.75, -0.5, 0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 0.75, -0.25, 0.5, -0.75, 1.0, -0.25, ]);
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const array11 = new Float32Array([0.75, -0.75, 0.0, 0.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.75, -0.5, -0.25, -1.0, 0.75, -1.0, 0.0, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 1.0, -0.75, 1.0, -0.5, 1.0, -1.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, 0.25, -0.5, 1.0, -0.75, -0.25, 0.0, -0.5, -1.0, -0.75, 0.25, -0.75, -0.25, -0.25, -0.25, 1.0, -0.25, 0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.0, -0.25, 0.0, 0.0, 1.0, -0.5, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device60.pushErrorScope("out-of-memory");
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device100.destroy();
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array12 = new Float32Array([0.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.5, 1.0, 0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.25, 0.75, 0.5, -0.5, 0.0, 1.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, -1.0, -0.75, -1.0, -0.5, 0.0, -1.0, 0.5, 0.5, -1.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.25, 0.0, -0.5, 0.5, 0.5, 0.0, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, -0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.75, -0.75, 1.0, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
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
    
    device40.pushErrorScope("internal");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout602]
    });
    const array13 = new Float32Array([1.0, 0.5, 0.5, -0.5, -0.25, -0.75, -0.5, -1.0, 1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.5, -0.25, 0.75, 1.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.25, -0.25, -1.0, -0.25, 0.25, -0.75, -1.0, 0.5, 0.0, -0.25, -0.5, 0.0, 0.25, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.5, -0.5, 0.25, 0.75, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, -1.0, 1.0, -0.5, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.5, -0.5, 0.75, 0.0, 1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, 0.25, 0.25, 0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.25, 0.25, 0.25, -1.0, ]);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const array14 = new Float32Array([-0.5, 0.0, -1.0, 0.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.0, -1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.75, 1.0, -0.75, 0.0, -0.5, 0.25, 0.25, 1.0, 0.75, -0.5, 0.5, 0.75, -1.0, -1.0, 0.25, -1.0, 0.25, -1.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 0.25, 0.75, -0.25, -1.0, 0.5, -1.0, -0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, 0.75, 0.5, -1.0, -0.25, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, -0.5, 1.0, 0.25, -1.0, 0.25, -0.25, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.25, 0.0, 1.0, ]);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout6014 = device60.createPipelineLayout({ 
        label: "pipeline_layout6014",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const array15 = new Float32Array([0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, -0.5, -0.75, -0.75, 0.0, -0.75, 0.0, 1.0, -0.75, -1.0, -1.0, -0.5, 0.75, -1.0, -0.5, 0.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.75, 0.0, 0.5, 0.5, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -0.25, 0.25, -1.0, 1.0, 0.75, 0.25, -0.25, 1.0, -0.5, 0.0, -0.5, 0.25, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -0.5, 0.0, 0.0, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, -1.0, -1.0, -0.5, -1.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.25, -1.0, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 0.5, 0.25, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    texture603.destroy();
    const pipeline_layout6015 = device60.createPipelineLayout({ 
        label: "pipeline_layout6015",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout6016 = device60.createPipelineLayout({ 
        label: "pipeline_layout6016",
        bindGroupLayouts: [bind_group_layout603]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout6017 = device60.createPipelineLayout({ 
        label: "pipeline_layout6017",
        bindGroupLayouts: [bind_group_layout604]
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    
    
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    
    const pipeline_layout6018 = device60.createPipelineLayout({ 
        label: "pipeline_layout6018",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const pipeline_layout6019 = device60.createPipelineLayout({ 
        label: "pipeline_layout6019",
        bindGroupLayouts: [bind_group_layout604]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const array16 = new Float32Array([0.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, -0.75, -0.25, 1.0, 0.0, 0.0, -0.75, -0.75, 1.0, -0.75, -0.5, 0.25, 0.0, 0.75, 0.0, 0.75, 1.0, -0.75, -0.25, -1.0, 0.0, 0.5, -0.25, 1.0, 0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.25, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, -0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 1.0, -0.75, -0.75, -0.75, 0.75, -0.5, 0.0, -0.25, 0.0, 0.25, -0.5, -1.0, 0.5, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.75, 0.25, 0.5, 0.75, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, 0.25, 1.0, -1.0, 1.0, 0.75, 0.5, -0.75, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, -0.5, 0.0, 0.75, 0.25, 0.5, ]);
    
    
    device40.destroy();
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout6020 = device60.createPipelineLayout({ 
        label: "pipeline_layout6020",
        bindGroupLayouts: [bind_group_layout605]
    });
    
    const pipeline_layout6021 = device60.createPipelineLayout({ 
        label: "pipeline_layout6021",
        bindGroupLayouts: [bind_group_layout603]
    });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const pipeline_layout6022 = device60.createPipelineLayout({ 
        label: "pipeline_layout6022",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const pipeline_layout6023 = device60.createPipelineLayout({ 
        label: "pipeline_layout6023",
        bindGroupLayouts: [bind_group_layout604]
    });
    
    const pipeline_layout6024 = device60.createPipelineLayout({ 
        label: "pipeline_layout6024",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device120.destroy();
    
    const pipeline_layout6025 = device60.createPipelineLayout({ 
        label: "pipeline_layout6025",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    
    
    
    
    const pipeline_layout6026 = device60.createPipelineLayout({ 
        label: "pipeline_layout6026",
        bindGroupLayouts: [bind_group_layout604]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.destroy();
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array17 = new Float32Array([-0.5, -0.75, -0.5, 0.5, 0.75, 0.0, 0.25, 0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 0.75, -1.0, 0.75, 0.5, 0.5, 0.25, 0.75, -0.25, -1.0, -0.5, -0.5, 1.0, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, 0.75, 1.0, -0.5, 0.25, -0.75, -1.0, 0.25, 0.0, 0.25, 0.5, 1.0, 0.25, 0.25, 1.0, 0.75, -0.5, -0.5, -0.75, 0.75, 0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -0.25, -1.0, 0.0, -0.5, 0.75, 0.25, -0.75, -0.75, 1.0, 1.0, 0.5, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, 1.0, 0.25, -0.5, 0.5, -0.25, -0.5, 0.75, ]);
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device130.pushErrorScope("out-of-memory");
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1300]
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array18 = new Float32Array([0.0, -0.25, -0.75, 0.0, -0.5, -0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.25, 0.25, 1.0, 0.25, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, -1.0, 0.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.25, 0.75, -0.25, -0.75, -1.0, 1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.0, 0.25, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -1.0, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, 0.25, -1.0, -0.75, -0.5, 0.5, 1.0, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, 0.0, 0.75, 0.25, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.75, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -1.0, 0.75, 0.75, ]);
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    device130.destroy();
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device150.pushErrorScope("out-of-memory");
    
    texture1500.destroy();
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture1501.destroy();
    device150.queue.writeTexture({ texture: texture1502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    device140.pushErrorScope("validation");
    device150.queue.writeTexture({ texture: texture1502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    device150.queue.writeTexture({ texture: texture1502 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1502 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device160.pushErrorScope("validation");
    device150.queue.writeTexture({ texture: texture1502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}