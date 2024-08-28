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
        powerPreference: "high-performance"
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
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
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
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
    
    device80.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device50.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.destroy();
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.destroy();
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
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
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
    
    
    
    
    
    
    
    device40.destroy();
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
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
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    device90.destroy();
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
    
    
    device100.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1101]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    device130.destroy();
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1101]
    });
    
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1100]
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
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const pipeline_layout1104 = device110.createPipelineLayout({ 
        label: "pipeline_layout1104",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout1105 = device110.createPipelineLayout({ 
        label: "pipeline_layout1105",
        bindGroupLayouts: [bind_group_layout1102]
    });
    
    
    const pipeline_layout1106 = device110.createPipelineLayout({ 
        label: "pipeline_layout1106",
        bindGroupLayouts: [bind_group_layout1101]
    });
    const pipeline_layout1107 = device110.createPipelineLayout({ 
        label: "pipeline_layout1107",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device110.destroy();
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    
    
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    device150.destroy();
    
    
    
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
    
    
    
    
    
    
    
    
    
    
    device120.destroy();
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device140.destroy();
    
    
    
    
    
    device160.destroy();
    
    
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    
    
    
    
    device170.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    
    
    
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    
    
    
    
    
    
    device180.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    device190.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    device200.destroy();
    
    
    
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    
    
    const bind_group_layout2200 = device220.createBindGroupLayout({ 
        label: "bind_group_layout2200",
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
    
    
    device220.destroy();
    
    
    
    
    
    
    
    
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    device210.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    
    
    
    
    
    
    device230.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
}