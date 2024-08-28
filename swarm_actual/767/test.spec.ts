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
    const array0 = new Float32Array([0.5, 0.0, -0.75, 0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.5, -1.0, -0.5, -0.25, -0.75, -0.75, 0.0, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.75, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 0.25, -0.25, -0.25, 0.5, -1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, -0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 0.75, 1.0, -0.25, -1.0, 1.0, -0.75, -0.25, 0.25, -0.5, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -1.0, -0.75, 0.25, -1.0, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("validation");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.5, -1.0, 0.0, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, -0.25, -0.75, 0.0, -0.25, -1.0, -1.0, 0.25, 1.0, 0.75, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, -0.5, 0.25, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, 0.75, 0.25, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -0.75, 0.25, -0.5, -0.25, 0.25, 0.5, 1.0, -0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 0.75, 1.0, -0.75, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, -0.25, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture101.destroy();
    device10.destroy();
    texture000.destroy();
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
    const array2 = new Float32Array([0.25, -0.5, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, 0.0, -0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, 0.25, -0.75, 0.75, -0.75, -1.0, 0.5, -0.75, 1.0, 0.75, -1.0, -0.5, 0.5, -0.5, 1.0, 0.5, 1.0, -1.0, 1.0, 0.75, 0.5, -0.5, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, -0.5, 0.25, 0.5, 1.0, -1.0, 1.0, -0.25, 1.0, 0.0, 0.5, 0.0, -1.0, 1.0, -0.75, 0.75, 0.0, -0.5, 0.0, -1.0, 1.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, 0.0, -1.0, -0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 1.0, 1.0, 0.75, 0.75, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.5, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, -0.75, 1.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, -1.0, -0.75, 0.5, 0.0, -0.5, -0.5, 1.0, -1.0, -0.75, -0.5, -0.75, 0.0, -0.5, -0.75, -0.75, -0.5, 0.0, -0.75, 0.75, 0.75, 0.5, 0.25, 0.5, 1.0, -1.0, -0.75, -0.25, 0.25, -1.0, -0.25, -0.75, 0.75, 0.75, -1.0, 0.75, 0.25, -1.0, -0.25, 0.5, 0.5, 0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, -0.5, 0.5, -0.75, 0.75, 0.0, 1.0, -0.75, -1.0, -1.0, 0.0, -0.5, 0.0, 0.25, -0.75, 0.0, -0.25, -0.5, -0.25, 0.0, 0.25, 0.0, -0.25, 0.5, -1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.5, ]);
    device20.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array4 = new Float32Array([-1.0, 0.5, -1.0, 0.75, 0.25, 0.5, -0.25, -0.25, -0.5, -0.5, -0.75, -0.25, 1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, -0.5, -0.75, -0.25, 0.0, -0.25, -0.5, -0.5, 0.75, -0.75, -1.0, 0.25, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, 0.25, -1.0, 0.25, 0.75, -0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.75, -1.0, 0.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, 0.25, -1.0, 0.75, -0.75, -0.25, -0.5, 0.75, 0.0, -0.5, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, -0.75, -0.25, -0.75, 0.0, -0.25, 0.25, 1.0, 0.25, 0.0, 1.0, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([-0.5, -1.0, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.5, -1.0, -0.75, 0.25, 0.25, -0.25, 1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 0.5, 0.0, -0.75, 0.5, -0.75, 0.5, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, -0.75, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, 0.25, 0.75, 0.25, 0.5, 1.0, 0.5, 0.75, -0.25, -0.75, -0.25, 0.0, -1.0, 0.75, 0.5, 0.75, -0.25, 0.25, 0.25, -0.75, -1.0, 0.25, -1.0, 0.75, 1.0, 0.5, 0.75, ]);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture002.destroy();
    texture001.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    texture004.destroy();
    
    device50.destroy();
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout005]
    });
    device30.pushErrorScope("internal");
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
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture003.destroy();
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
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
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([-1.0, -0.75, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, -0.5, -0.75, -0.5, -1.0, 0.75, 0.0, -0.75, 0.0, -0.5, -0.25, 0.25, -0.75, 0.5, -0.25, 0.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, -0.25, 0.75, 0.25, -1.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.25, 0.5, 0.5, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, 0.25, 0.75, -0.25, -1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, 1.0, -1.0, -0.25, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array7 = new Float32Array([0.75, 0.25, 0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.75, 0.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.5, -0.75, 1.0, 1.0, 0.0, -0.25, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, 0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -0.75, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, -0.75, -0.75, -0.5, 0.75, -0.5, 0.0, 1.0, 0.25, 0.25, -0.75, -1.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.75, -0.5, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture005.destroy();
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture400.destroy();
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    device70.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    texture401.destroy();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    
    texture300.destroy();
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    device60.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device90.destroy();
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array8 = new Float32Array([-0.25, 1.0, 0.0, 0.25, 0.75, 1.0, -0.25, -0.25, 0.75, 0.25, -0.25, -0.5, -0.25, -0.75, 0.0, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, 1.0, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, 1.0, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, 0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, -0.25, -1.0, -0.5, -0.75, -0.5, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, -1.0, -0.75, -0.75, 1.0, -0.25, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.75, -0.25, 0.0, 0.75, 0.5, -0.25, 0.25, -0.5, 0.75, -0.25, -1.0, -0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 0.25, -0.25, 1.0, 0.25, 0.75, 0.0, -0.25, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, ]);
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
    });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const array9 = new Float32Array([-0.75, 0.75, -0.75, -0.25, 0.5, 1.0, 0.0, 0.75, -0.75, -0.5, -0.75, 0.5, 0.0, 0.0, 0.0, -0.25, -1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, -0.75, -0.75, 0.25, -1.0, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, -0.5, -0.5, 1.0, 0.0, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.75, -0.5, 1.0, 0.25, -0.5, -0.25, -0.75, -0.25, -0.75, -0.25, -0.75, 0.0, -1.0, -0.5, -1.0, -0.75, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, 0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout006]
    });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout005]
    });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.pushErrorScope("internal");
    texture301.destroy();
    device00.queue.writeTexture({ texture: texture007 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture007.destroy();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.25, 0.75, -0.25, 1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.5, -1.0, -0.75, -0.25, 0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 0.25, -0.5, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 0.5, -0.25, -0.75, -0.5, -0.25, -1.0, 0.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 0.25, 0.75, 0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.5, -1.0, 0.25, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, -0.75, -0.75, 1.0, -1.0, 0.75, -0.75, 0.25, 0.5, -0.25, -0.75, 0.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.75, ]);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture006.destroy();
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout005]
    });
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout405]
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout405]
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    device30.queue.writeTexture({ texture: texture303 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture303.destroy();
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout008]
    });
    
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout007]
    });
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout404]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout404]
    });
    const pipeline_layout4019 = device40.createPipelineLayout({ 
        label: "pipeline_layout4019",
        bindGroupLayouts: [bind_group_layout403]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    texture009.destroy();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout4020 = device40.createPipelineLayout({ 
        label: "pipeline_layout4020",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout4021 = device40.createPipelineLayout({ 
        label: "pipeline_layout4021",
        bindGroupLayouts: [bind_group_layout404]
    });
    texture304.destroy();
    const pipeline_layout4022 = device40.createPipelineLayout({ 
        label: "pipeline_layout4022",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const pipeline_layout4023 = device40.createPipelineLayout({ 
        label: "pipeline_layout4023",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout008]
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout004]
    });
    texture403.destroy();
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4024 = device40.createPipelineLayout({ 
        label: "pipeline_layout4024",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture404.destroy();
    
    const pipeline_layout4025 = device40.createPipelineLayout({ 
        label: "pipeline_layout4025",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0044 = device00.createPipelineLayout({ 
        label: "pipeline_layout0044",
        bindGroupLayouts: [bind_group_layout005]
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
    const array11 = new Float32Array([-0.75, 0.5, 0.25, -0.25, -0.75, 1.0, -0.25, -0.75, -0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, -0.25, -0.25, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, 1.0, 0.5, 0.5, -0.25, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, 0.5, 1.0, 0.75, -1.0, -1.0, 0.75, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, 0.75, 0.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.0, ]);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0045 = device00.createPipelineLayout({ 
        label: "pipeline_layout0045",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0046 = device00.createPipelineLayout({ 
        label: "pipeline_layout0046",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    const pipeline_layout0047 = device00.createPipelineLayout({ 
        label: "pipeline_layout0047",
        bindGroupLayouts: [bind_group_layout0010]
    });
    
    texture1000.destroy();
    
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    texture1001.destroy();
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout4026 = device40.createPipelineLayout({ 
        label: "pipeline_layout4026",
        bindGroupLayouts: [bind_group_layout404]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    texture402.destroy();
    const pipeline_layout4027 = device40.createPipelineLayout({ 
        label: "pipeline_layout4027",
        bindGroupLayouts: [bind_group_layout404]
    });
    texture008.destroy();
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0048 = device00.createPipelineLayout({ 
        label: "pipeline_layout0048",
        bindGroupLayouts: [bind_group_layout009]
    });
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout4028 = device40.createPipelineLayout({ 
        label: "pipeline_layout4028",
        bindGroupLayouts: [bind_group_layout404]
    });
    const pipeline_layout4029 = device40.createPipelineLayout({ 
        label: "pipeline_layout4029",
        bindGroupLayouts: [bind_group_layout405]
    });
    const pipeline_layout0049 = device00.createPipelineLayout({ 
        label: "pipeline_layout0049",
        bindGroupLayouts: [bind_group_layout009]
    });
    device30.queue.writeTexture({ texture: texture305 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0050 = device00.createPipelineLayout({ 
        label: "pipeline_layout0050",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout4030 = device40.createPipelineLayout({ 
        label: "pipeline_layout4030",
        bindGroupLayouts: [bind_group_layout402]
    });
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0051 = device00.createPipelineLayout({ 
        label: "pipeline_layout0051",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0052 = device00.createPipelineLayout({ 
        label: "pipeline_layout0052",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    const pipeline_layout0053 = device00.createPipelineLayout({ 
        label: "pipeline_layout0053",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0054 = device00.createPipelineLayout({ 
        label: "pipeline_layout0054",
        bindGroupLayouts: [bind_group_layout001]
    });
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    const pipeline_layout0055 = device00.createPipelineLayout({ 
        label: "pipeline_layout0055",
        bindGroupLayouts: [bind_group_layout001]
    });
    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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
    const pipeline_layout4031 = device40.createPipelineLayout({ 
        label: "pipeline_layout4031",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array12 = new Float32Array([-0.5, 0.75, 0.25, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 1.0, 0.0, 0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, 0.75, 0.25, -0.5, 0.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 1.0, 0.75, 1.0, -0.5, 1.0, 0.75, 0.0, 0.25, -0.5, 0.0, -0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, 0.5, 1.0, -0.75, 0.75, -1.0, 0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 0.5, 0.0, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 0.5, -0.25, 0.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 1.0, 0.25, 0.0, 0.5, -0.25, 0.25, ]);
    const pipeline_layout0056 = device00.createPipelineLayout({ 
        label: "pipeline_layout0056",
        bindGroupLayouts: [bind_group_layout0011]
    });
    const pipeline_layout0057 = device00.createPipelineLayout({ 
        label: "pipeline_layout0057",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout4032 = device40.createPipelineLayout({ 
        label: "pipeline_layout4032",
        bindGroupLayouts: [bind_group_layout403]
    });
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
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
    const pipeline_layout0058 = device00.createPipelineLayout({ 
        label: "pipeline_layout0058",
        bindGroupLayouts: [bind_group_layout009]
    });
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([-0.5, 0.5, 0.0, -0.5, -0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -1.0, -0.75, -0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -1.0, 1.0, 0.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 1.0, -1.0, 0.25, -0.25, 0.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, -1.0, 0.5, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.0, 1.0, -1.0, -1.0, 0.5, -0.75, 0.0, -0.75, 0.75, -0.75, 0.5, -1.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.75, -1.0, 0.0, -0.25, 0.5, -0.75, -0.5, 0.25, 1.0, 0.25, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, -0.75, ]);
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout302]
    });
    texture305.destroy();
    const pipeline_layout0059 = device00.createPipelineLayout({ 
        label: "pipeline_layout0059",
        bindGroupLayouts: [bind_group_layout0010]
    });
    const pipeline_layout3023 = device30.createPipelineLayout({ 
        label: "pipeline_layout3023",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout1005 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1005",
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
    const pipeline_layout0060 = device00.createPipelineLayout({ 
        label: "pipeline_layout0060",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout0061 = device00.createPipelineLayout({ 
        label: "pipeline_layout0061",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0062 = device00.createPipelineLayout({ 
        label: "pipeline_layout0062",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0063 = device00.createPipelineLayout({ 
        label: "pipeline_layout0063",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout4033 = device40.createPipelineLayout({ 
        label: "pipeline_layout4033",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array14 = new Float32Array([-1.0, -0.25, -0.25, -0.25, 0.5, 0.5, 0.5, -0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -0.25, 0.75, -0.5, 0.0, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, 0.25, -1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.5, 0.0, 1.0, -0.5, -0.5, 0.25, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 1.0, 0.75, -0.75, -0.25, 1.0, -0.5, 0.75, 0.5, 0.25, -0.25, -1.0, 0.5, 0.0, -1.0, 0.0, -0.75, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.5, -0.25, 0.75, 0.5, ]);
    const pipeline_layout0064 = device00.createPipelineLayout({ 
        label: "pipeline_layout0064",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout0065 = device00.createPipelineLayout({ 
        label: "pipeline_layout0065",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0066 = device00.createPipelineLayout({ 
        label: "pipeline_layout0066",
        bindGroupLayouts: [bind_group_layout0011]
    });
    
    const pipeline_layout0067 = device00.createPipelineLayout({ 
        label: "pipeline_layout0067",
        bindGroupLayouts: [bind_group_layout0011]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout3024 = device30.createPipelineLayout({ 
        label: "pipeline_layout3024",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1005]
    });
    const pipeline_layout4034 = device40.createPipelineLayout({ 
        label: "pipeline_layout4034",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout0068 = device00.createPipelineLayout({ 
        label: "pipeline_layout0068",
        bindGroupLayouts: [bind_group_layout009]
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
    
    const array15 = new Float32Array([0.25, -0.5, -1.0, -0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.0, -0.5, 1.0, -0.5, -0.25, -0.25, 0.25, -0.75, 0.25, 1.0, -0.5, 0.5, 0.25, 0.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.5, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.25, -0.25, -1.0, -0.25, 1.0, 0.75, 0.25, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, 0.75, 0.75, 0.5, 1.0, -0.25, -0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 1.0, -0.25, -0.5, -0.25, -0.25, 0.0, -0.25, 1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.0, 1.0, 0.5, 1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, -0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, 0.75, ]);
    const bind_group_layout1006 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1006",
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
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1004]
    });
    const pipeline_layout4035 = device40.createPipelineLayout({ 
        label: "pipeline_layout4035",
        bindGroupLayouts: [bind_group_layout407]
    });
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1005]
    });
    const pipeline_layout3025 = device30.createPipelineLayout({ 
        label: "pipeline_layout3025",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout0069 = device00.createPipelineLayout({ 
        label: "pipeline_layout0069",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout0070 = device00.createPipelineLayout({ 
        label: "pipeline_layout0070",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0071 = device00.createPipelineLayout({ 
        label: "pipeline_layout0071",
        bindGroupLayouts: [bind_group_layout007]
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const pipeline_layout0072 = device00.createPipelineLayout({ 
        label: "pipeline_layout0072",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const pipeline_layout0073 = device00.createPipelineLayout({ 
        label: "pipeline_layout0073",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    
    const pipeline_layout3026 = device30.createPipelineLayout({ 
        label: "pipeline_layout3026",
        bindGroupLayouts: [bind_group_layout303]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.pushErrorScope("out-of-memory");
    const pipeline_layout1006 = device100.createPipelineLayout({ 
        label: "pipeline_layout1006",
        bindGroupLayouts: [bind_group_layout1003]
    });
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const pipeline_layout4036 = device40.createPipelineLayout({ 
        label: "pipeline_layout4036",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    const pipeline_layout3027 = device30.createPipelineLayout({ 
        label: "pipeline_layout3027",
        bindGroupLayouts: [bind_group_layout303]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3028 = device30.createPipelineLayout({ 
        label: "pipeline_layout3028",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0074 = device00.createPipelineLayout({ 
        label: "pipeline_layout0074",
        bindGroupLayouts: [bind_group_layout0011]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3029 = device30.createPipelineLayout({ 
        label: "pipeline_layout3029",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout1007 = device100.createPipelineLayout({ 
        label: "pipeline_layout1007",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const pipeline_layout3030 = device30.createPipelineLayout({ 
        label: "pipeline_layout3030",
        bindGroupLayouts: [bind_group_layout303]
    });
    const array16 = new Float32Array([0.0, -0.25, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, -0.5, -1.0, 0.75, -0.75, -0.25, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.25, 0.25, 0.75, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, 0.0, -0.25, 0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.5, 0.75, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, -0.75, -0.75, -0.5, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, -0.25, -0.25, -1.0, -1.0, -1.0, 0.5, ]);
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0075 = device00.createPipelineLayout({ 
        label: "pipeline_layout0075",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0076 = device00.createPipelineLayout({ 
        label: "pipeline_layout0076",
        bindGroupLayouts: [bind_group_layout002]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3031 = device30.createPipelineLayout({ 
        label: "pipeline_layout3031",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture0010 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array17 = new Float32Array([0.5, -0.5, 1.0, -0.75, 0.5, 0.75, 0.5, -0.75, 0.75, 0.75, 0.0, -0.25, -0.5, -0.25, 0.25, -0.25, -1.0, 0.25, -1.0, 0.75, -1.0, -0.25, -1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, 0.0, 0.75, 0.5, 0.25, -1.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.5, -0.25, -0.25, 1.0, -0.25, -1.0, 0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, -0.75, 0.5, 1.0, -1.0, 1.0, -0.5, -0.5, 0.5, -0.5, -1.0, -0.75, 0.0, 1.0, 0.75, -1.0, 0.25, -0.75, -0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, -0.75, 1.0, 0.25, -1.0, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, 1.0, ]);
    
    const bind_group_layout0012 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0012",
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
    device110.queue.writeTexture({ texture: texture1101 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3032 = device30.createPipelineLayout({ 
        label: "pipeline_layout3032",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout0077 = device00.createPipelineLayout({ 
        label: "pipeline_layout0077",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture1100.destroy();
    const pipeline_layout4037 = device40.createPipelineLayout({ 
        label: "pipeline_layout4037",
        bindGroupLayouts: [bind_group_layout400]
    });
    const bind_group_layout408 = device40.createBindGroupLayout({ 
        label: "bind_group_layout408",
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
    const bind_group_layout409 = device40.createBindGroupLayout({ 
        label: "bind_group_layout409",
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
    device00.queue.writeTexture({ texture: texture0010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1008 = device100.createPipelineLayout({ 
        label: "pipeline_layout1008",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4038 = device40.createPipelineLayout({ 
        label: "pipeline_layout4038",
        bindGroupLayouts: [bind_group_layout400]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture0010 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device110.queue.writeTexture({ texture: texture1101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout4039 = device40.createPipelineLayout({ 
        label: "pipeline_layout4039",
        bindGroupLayouts: [bind_group_layout403]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const pipeline_layout0078 = device00.createPipelineLayout({ 
        label: "pipeline_layout0078",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout4040 = device40.createPipelineLayout({ 
        label: "pipeline_layout4040",
        bindGroupLayouts: [bind_group_layout403]
    });
    texture1101.destroy();
    
    const pipeline_layout4041 = device40.createPipelineLayout({ 
        label: "pipeline_layout4041",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout3033 = device30.createPipelineLayout({ 
        label: "pipeline_layout3033",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0010 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1009 = device100.createPipelineLayout({ 
        label: "pipeline_layout1009",
        bindGroupLayouts: [bind_group_layout1006]
    });
    device120.pushErrorScope("validation");
    const pipeline_layout3034 = device30.createPipelineLayout({ 
        label: "pipeline_layout3034",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout0079 = device00.createPipelineLayout({ 
        label: "pipeline_layout0079",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0010 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout10010 = device100.createPipelineLayout({ 
        label: "pipeline_layout10010",
        bindGroupLayouts: [bind_group_layout1005]
    });
    const pipeline_layout10011 = device100.createPipelineLayout({ 
        label: "pipeline_layout10011",
        bindGroupLayouts: [bind_group_layout1005]
    });
    const pipeline_layout3035 = device30.createPipelineLayout({ 
        label: "pipeline_layout3035",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout4042 = device40.createPipelineLayout({ 
        label: "pipeline_layout4042",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout0080 = device00.createPipelineLayout({ 
        label: "pipeline_layout0080",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const pipeline_layout0081 = device00.createPipelineLayout({ 
        label: "pipeline_layout0081",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const bind_group_layout0013 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0013",
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
    const pipeline_layout0082 = device00.createPipelineLayout({ 
        label: "pipeline_layout0082",
        bindGroupLayouts: [bind_group_layout0011]
    });
    
    
    const pipeline_layout0083 = device00.createPipelineLayout({ 
        label: "pipeline_layout0083",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout10012 = device100.createPipelineLayout({ 
        label: "pipeline_layout10012",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const pipeline_layout0084 = device00.createPipelineLayout({ 
        label: "pipeline_layout0084",
        bindGroupLayouts: [bind_group_layout001]
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
    const bind_group_layout1007 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1007",
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
    const pipeline_layout0085 = device00.createPipelineLayout({ 
        label: "pipeline_layout0085",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout4043 = device40.createPipelineLayout({ 
        label: "pipeline_layout4043",
        bindGroupLayouts: [bind_group_layout402]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4044 = device40.createPipelineLayout({ 
        label: "pipeline_layout4044",
        bindGroupLayouts: [bind_group_layout409]
    });
    const pipeline_layout0086 = device00.createPipelineLayout({ 
        label: "pipeline_layout0086",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout0014 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0014",
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
    device00.queue.writeTexture({ texture: texture0010 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0087 = device00.createPipelineLayout({ 
        label: "pipeline_layout0087",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const pipeline_layout0088 = device00.createPipelineLayout({ 
        label: "pipeline_layout0088",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout4045 = device40.createPipelineLayout({ 
        label: "pipeline_layout4045",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout4046 = device40.createPipelineLayout({ 
        label: "pipeline_layout4046",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    const pipeline_layout3036 = device30.createPipelineLayout({ 
        label: "pipeline_layout3036",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeTexture({ texture: texture0011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4047 = device40.createPipelineLayout({ 
        label: "pipeline_layout4047",
        bindGroupLayouts: [bind_group_layout402]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0011 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4048 = device40.createPipelineLayout({ 
        label: "pipeline_layout4048",
        bindGroupLayouts: [bind_group_layout402]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout10013 = device100.createPipelineLayout({ 
        label: "pipeline_layout10013",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device00.queue.writeTexture({ texture: texture0011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout10014 = device100.createPipelineLayout({ 
        label: "pipeline_layout10014",
        bindGroupLayouts: [bind_group_layout1001]
    });
    device00.queue.writeTexture({ texture: texture0011 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1102.destroy();
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const pipeline_layout0089 = device00.createPipelineLayout({ 
        label: "pipeline_layout0089",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const pipeline_layout3037 = device30.createPipelineLayout({ 
        label: "pipeline_layout3037",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout4049 = device40.createPipelineLayout({ 
        label: "pipeline_layout4049",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout0090 = device00.createPipelineLayout({ 
        label: "pipeline_layout0090",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout10015 = device100.createPipelineLayout({ 
        label: "pipeline_layout10015",
        bindGroupLayouts: [bind_group_layout1004]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4050 = device40.createPipelineLayout({ 
        label: "pipeline_layout4050",
        bindGroupLayouts: [bind_group_layout409]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0091 = device00.createPipelineLayout({ 
        label: "pipeline_layout0091",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeTexture({ texture: texture0011 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0011 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout10016 = device100.createPipelineLayout({ 
        label: "pipeline_layout10016",
        bindGroupLayouts: [bind_group_layout1001]
    });
    device00.queue.writeTexture({ texture: texture0011 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array18 = new Float32Array([-1.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.0, 1.0, -1.0, -0.25, -0.75, 0.75, 0.75, -0.5, 0.25, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, -0.5, 0.5, -0.5, -1.0, 1.0, 1.0, 1.0, 0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.5, -0.5, -1.0, -0.25, 0.0, 1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, 0.5, 0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, 0.0, -1.0, 0.75, 0.75, -1.0, -0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 1.0, -0.75, 0.0, 0.0, -0.25, 0.5, 0.25, -1.0, -0.25, ]);
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}