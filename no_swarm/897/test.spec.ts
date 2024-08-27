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
    
    
    
    
    
    
    const array0 = new Float32Array([0.5, -0.25, 0.5, 0.0, 0.0, 0.75, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, -0.25, -0.5, 1.0, -0.75, 0.25, 0.0, 0.5, 0.0, 0.5, 1.0, 0.75, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, 0.75, 1.0, -0.5, 0.75, -0.5, 0.25, -0.5, 0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.75, 1.0, 0.0, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.25, 0.75, 0.0, ]);
    const array1 = new Float32Array([0.0, 0.25, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.25, -0.25, -0.25, 0.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, -0.5, 0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, -0.5, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, -0.5, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, -1.0, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 0.5, -0.5, -1.0, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, -0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 0.0, 0.25, -0.25, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, -0.75, 0.75, 1.0, 1.0, 0.25, ]);
    const array2 = new Float32Array([-0.75, 1.0, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, 1.0, -0.5, -0.5, 0.5, -1.0, -1.0, 0.75, 0.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.25, 0.5, 0.5, -1.0, 0.75, 0.0, -0.75, -0.5, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, -0.25, -0.75, 0.75, -0.75, -0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.75, 0.0, 0.5, 0.25, 0.25, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.5, 1.0, 1.0, 0.5, -0.5, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, -0.25, 0.0, 0.0, 0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.5, 1.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 1.0, -0.5, ]);
    
    
    const array3 = new Float32Array([1.0, 0.5, 0.5, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, 0.25, 1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.75, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, 1.0, 0.25, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, 0.5, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, 0.0, -0.75, 0.0, -0.75, 0.5, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.75, -1.0, 0.0, 0.25, -0.5, 0.75, -1.0, -0.5, 0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, 1.0, 0.25, -0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -0.75, -1.0, 1.0, -1.0, -0.5, 0.5, -1.0, -0.75, -0.5, -0.75, ]);
    const array4 = new Float32Array([-0.25, 0.75, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.5, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, 0.0, 0.0, 1.0, 0.5, 1.0, 1.0, -0.75, -0.5, -0.25, 1.0, -0.5, 0.5, 0.0, -0.25, 0.75, -0.25, 0.0, -0.75, -0.25, 0.75, -0.25, -1.0, 0.5, 0.75, -0.5, -0.75, 0.0, 0.5, -0.5, -0.5, -0.25, -0.75, 0.5, 0.5, -0.75, 0.5, 1.0, -1.0, -1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, -0.25, -1.0, -0.75, 0.5, -0.5, 0.75, -0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 0.0, -0.75, 0.75, -0.5, -0.5, 0.75, 1.0, -0.75, -0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array5 = new Float32Array([0.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, -1.0, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 0.25, 0.25, 0.5, -1.0, 1.0, -0.25, 0.25, 1.0, 0.75, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, 0.5, 0.5, -0.5, -0.5, 0.5, 0.75, 0.75, 0.0, -0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, 1.0, -1.0, 0.0, -0.75, -0.25, 0.0, -0.75, -0.75, 0.75, 0.5, -0.25, 1.0, -0.5, 0.75, -0.5, 1.0, 0.25, -0.25, 0.0, -0.25, -0.5, 0.5, -0.75, 1.0, ]);
    const array6 = new Float32Array([-0.75, -1.0, -0.5, 0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 0.0, 0.5, 0.0, 0.5, 0.25, 0.25, 0.5, -1.0, -0.5, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.25, 0.5, -1.0, -1.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, 1.0, -0.25, 0.5, 0.75, -0.75, 0.75, 0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 1.0, 1.0, 1.0, -1.0, 0.5, -1.0, 0.75, 0.0, 0.5, -0.75, -0.75, -1.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.25, -0.25, 0.5, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, 1.0, 0.75, 0.0, -0.25, 0.5, -0.5, 0.0, 1.0, -1.0, 0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 1.0, 0.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.5, 0.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array7 = new Float32Array([-0.5, 1.0, 1.0, -0.75, -0.5, 0.0, -0.5, 0.0, 0.5, -0.5, -1.0, -0.25, -0.75, -0.75, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, 1.0, -1.0, 0.25, -0.5, -0.25, -0.5, -0.75, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.75, 0.0, -1.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, -0.5, -1.0, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, 0.75, 1.0, 0.25, -0.5, -1.0, 0.5, 1.0, 0.75, 0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 1.0, -0.25, -0.75, -0.75, 1.0, -0.5, 0.5, -0.5, 0.5, 1.0, -0.5, -1.0, -0.25, 0.5, -1.0, -0.5, 1.0, -0.5, 0.75, -0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 0.0, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, -0.25, ]);
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    const array8 = new Float32Array([0.5, 0.0, 0.0, 1.0, -0.25, -0.75, -0.25, -1.0, 0.25, 0.0, 0.75, -1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, -0.75, 0.0, 1.0, 0.0, 1.0, -0.5, -0.5, 0.75, -0.75, 0.75, -0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, 1.0, -0.25, -1.0, -1.0, 0.75, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, -1.0, 0.25, 0.75, 1.0, -1.0, -0.5, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.5, 1.0, -1.0, 0.75, -0.25, 0.75, -0.5, -0.25, 0.0, -0.5, 0.25, -0.5, -0.75, 0.0, -1.0, 0.75, 0.25, ]);
    
    
    
    
    
    const array9 = new Float32Array([-0.75, 0.0, -1.0, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, -0.25, 0.25, -0.75, 0.5, 0.75, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, 0.25, -0.25, 1.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.75, -0.5, 0.75, 0.5, -1.0, -1.0, 0.5, 0.25, 0.75, -0.5, -0.5, -0.25, -0.75, -0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.25, -0.25, 0.25, -0.75, -0.5, 0.25, -0.25, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, 0.0, -0.75, -1.0, -1.0, -0.5, 0.5, -0.25, -1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.0, -0.5, 0.0, -0.25, -0.5, 0.25, -0.25, 0.75, 0.0, -0.75, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    
    query200.destroy()
    
    const array10 = new Float32Array([-0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 1.0, 0.75, -0.75, -0.75, 0.75, -0.75, 0.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.25, 0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -1.0, -0.75, -0.75, 0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.25, 0.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 0.5, 0.75, 0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 0.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 0.25, -0.25, -0.5, 0.25, 1.0, -1.0, -0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array11 = new Float32Array([1.0, -0.25, -1.0, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, -0.25, -0.75, -0.5, 0.0, -0.75, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, -1.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.5, 1.0, -0.5, 0.5, -1.0, -0.25, 0.0, -0.25, -0.5, 0.0, 0.0, -1.0, 1.0, -0.75, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, 1.0, 0.5, 0.0, 0.5, 0.75, 1.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 1.0, 0.0, -0.5, -1.0, -0.5, 1.0, -0.25, 0.0, -1.0, 1.0, 0.5, -0.25, 0.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.5, -0.25, 0.5, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.5, 0.25, -0.75, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array12 = new Float32Array([0.75, 0.75, -0.5, 0.5, 0.75, -0.75, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.75, -1.0, 0.5, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 0.0, -1.0, 0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, -1.0, 0.25, 0.25, -0.5, -1.0, 0.25, 0.25, -0.5, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 1.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.5, -0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, -0.5, -0.25, 0.75, ]);
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
    device60.pushErrorScope("out-of-memory");
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device40.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device30.pushErrorScope("out-of-memory");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder600.pushDebugGroup("mygroupmarker")
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder600.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    const command_buffer401 = command_encoder401.finish();
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder500.popDebugGroup();
    command_encoder300.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    command_encoder400.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device30.pushErrorScope("validation");
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    device40.queue.submit([command_buffer401, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder402.insertDebugMarker("mymarker");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    const array13 = new Float32Array([-0.5, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 0.75, 0.0, -0.5, -0.75, -0.75, -0.75, 0.25, -0.5, -0.5, -0.25, 0.5, 0.75, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -0.5, 1.0, 1.0, -0.75, 0.25, 0.5, 0.25, 0.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.0, 1.0, -0.5, 0.0, 0.25, -0.25, -1.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, -0.25, -1.0, -0.5, 0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.25, -0.5, 1.0, -1.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -0.75, 1.0, ]);
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    buffer401.destroy()
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
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query600.destroy()
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    texture300.destroy();
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
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group500);
    
    texture400.destroy();
    device50.pushErrorScope("out-of-memory");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    command_encoder400.popDebugGroup()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    
    const array14 = new Float32Array([0.25, -1.0, -0.75, 0.25, 1.0, -0.5, 0.75, -0.5, -0.5, 1.0, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 1.0, -1.0, -0.25, 0.75, 1.0, -0.75, 1.0, 0.5, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, -0.75, 0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, 0.5, -1.0, -0.25, -0.25, -0.75, -0.75, ]);
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    compute_pass_encoder5020.insertDebugMarker("marker")
    buffer601.destroy()
    compute_pass_encoder5020.dispatchWorkgroups(100);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
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
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    
    command_encoder800.insertDebugMarker("mymarker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.pushErrorScope("validation");
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder600.setPipeline(render_pipeline602);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    device90.destroy();
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query700.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.pushErrorScope("internal");
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    query300.destroy()
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder501.setPipeline(render_pipeline502);
    device80.pushErrorScope("internal");
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline602.getBindGroupLayout(0),
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

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder403.insertDebugMarker("mymarker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer603.destroy()
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    buffer602.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    render_bundle_encoder502.setPipeline(render_pipeline502);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    device30.pushErrorScope("validation");
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
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device70.pushErrorScope("out-of-memory");
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query300.destroy()
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder500.setPipeline(render_pipeline500);
    texture500.destroy();
    
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const command_buffer503 = command_encoder503.finish();
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    texture601.destroy();
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    buffer700.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    buffer505.destroy()
    texture602.destroy();
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    texture700.destroy();
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    command_encoder405.pushDebugGroup("mygroupmarker")
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5040.setStencilReference(1);
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    command_encoder405.popDebugGroup()
    render_bundle_encoder600.popDebugGroup();
    
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("internal");
    command_encoder405.pushDebugGroup("mygroupmarker")
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
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
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout605,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    command_encoder601.clearBuffer(buffer600);
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    texture604.destroy();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder5000.popDebugGroup()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5040.setPipeline(render_pipeline501);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
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
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    query800.destroy()
    
    
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout604,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder6010.setPipeline(compute_pipeline608);
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer801 = command_encoder801.finish();
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group502);
    command_encoder405.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline608.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer405, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer405, 0);
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    const command_buffer400 = command_encoder400.finish();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5010, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group504);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    compute_pass_encoder5010.end();
    compute_pass_encoder4040.setPipeline(compute_pipeline400);
    device50.queue.submit([command_buffer503, ]);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group401);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer408, 0);
    compute_pass_encoder4020.end();
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder5020.popDebugGroup()
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
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    compute_pass_encoder6010.end();
    command_encoder501.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer500 = command_encoder500.finish();
    device40.queue.submit([command_buffer405, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    compute_pass_encoder4040.end();
    const command_buffer404 = command_encoder404.finish();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer608, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer608, 0);
    compute_pass_encoder5020.end();
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer402 = command_encoder402.finish();
    device50.queue.submit([command_buffer502, ]);
    device40.queue.submit([command_buffer404, ]);
    device80.queue.submit([command_buffer801, ]);
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer402, ]);
    device60.queue.submit([command_buffer600, ]);
}