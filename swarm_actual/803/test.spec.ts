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
        powerPreference: "low-power"
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    query000.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query001.destroy()
    query000.destroy()
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    query000.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    query003.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query001.destroy()
    query004.destroy()
    
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
    
    query200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
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
    query201.destroy()
    
    
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
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
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
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
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
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    query204.destroy()
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    query000.destroy()
    query203.destroy()
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout006]
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
    
    query006.destroy()
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout006]
    });
    query204.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
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
    query203.destroy()
    query201.destroy()
    query005.destroy()
    
    
    query101.destroy()
    
    query100.destroy()
    query101.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query101.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    query204.destroy()
    query000.destroy()
    query000.destroy()
    
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
    
    query101.destroy()
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    query003.destroy()
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    query006.destroy()
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout008]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout004]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query102.destroy()
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout007]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout009]
    });
    query204.destroy()
    query001.destroy()
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout005]
    });
    query101.destroy()
    query100.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout002]
    });
    query002.destroy()
    query002.destroy()
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout0010]
    });
    query200.destroy()
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    query104.destroy()
    
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    query005.destroy()
    query001.destroy()
    query206.destroy()
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
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
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    query205.destroy()
    
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout006]
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
    query205.destroy()
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
    
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout0042 = device00.createPipelineLayout({ 
        label: "pipeline_layout0042",
        bindGroupLayouts: [bind_group_layout000]
    });
    query201.destroy()
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    query205.destroy()
    
    
    
    const pipeline_layout0043 = device00.createPipelineLayout({ 
        label: "pipeline_layout0043",
        bindGroupLayouts: [bind_group_layout0012]
    });
    query101.destroy()
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
    query006.destroy()
    const pipeline_layout0044 = device00.createPipelineLayout({ 
        label: "pipeline_layout0044",
        bindGroupLayouts: [bind_group_layout005]
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
    const pipeline_layout0045 = device00.createPipelineLayout({ 
        label: "pipeline_layout0045",
        bindGroupLayouts: [bind_group_layout008]
    });
    query203.destroy()
    
    
    
    
    query101.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    query101.destroy()
    const pipeline_layout0046 = device00.createPipelineLayout({ 
        label: "pipeline_layout0046",
        bindGroupLayouts: [bind_group_layout0010]
    });
    const pipeline_layout0047 = device00.createPipelineLayout({ 
        label: "pipeline_layout0047",
        bindGroupLayouts: [bind_group_layout003]
    });
    query400.destroy()
    
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
    query004.destroy()
    query003.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0048 = device00.createPipelineLayout({ 
        label: "pipeline_layout0048",
        bindGroupLayouts: [bind_group_layout006]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    
    
    query006.destroy()
    
    
    
    query003.destroy()
    
    const pipeline_layout0049 = device00.createPipelineLayout({ 
        label: "pipeline_layout0049",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const pipeline_layout0050 = device00.createPipelineLayout({ 
        label: "pipeline_layout0050",
        bindGroupLayouts: [bind_group_layout0010]
    });
    const pipeline_layout0051 = device00.createPipelineLayout({ 
        label: "pipeline_layout0051",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    query004.destroy()
    const pipeline_layout0052 = device00.createPipelineLayout({ 
        label: "pipeline_layout0052",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0053 = device00.createPipelineLayout({ 
        label: "pipeline_layout0053",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0054 = device00.createPipelineLayout({ 
        label: "pipeline_layout0054",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0055 = device00.createPipelineLayout({ 
        label: "pipeline_layout0055",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout0056 = device00.createPipelineLayout({ 
        label: "pipeline_layout0056",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0057 = device00.createPipelineLayout({ 
        label: "pipeline_layout0057",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const bind_group_layout0015 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0015",
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
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    query300.destroy()
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
    
    query203.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    query004.destroy()
    const pipeline_layout0058 = device00.createPipelineLayout({ 
        label: "pipeline_layout0058",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout204]
    });
    query006.destroy()
    query100.destroy()
    query203.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    query205.destroy()
    query006.destroy()
    const pipeline_layout0059 = device00.createPipelineLayout({ 
        label: "pipeline_layout0059",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const pipeline_layout0060 = device00.createPipelineLayout({ 
        label: "pipeline_layout0060",
        bindGroupLayouts: [bind_group_layout0014]
    });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout202]
    });
    query103.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    query003.destroy()
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    query004.destroy()
    query203.destroy()
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout0061 = device00.createPipelineLayout({ 
        label: "pipeline_layout0061",
        bindGroupLayouts: [bind_group_layout003]
    });
    query000.destroy()
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    query204.destroy()
    
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout0062 = device00.createPipelineLayout({ 
        label: "pipeline_layout0062",
        bindGroupLayouts: [bind_group_layout0010]
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
    const pipeline_layout0063 = device00.createPipelineLayout({ 
        label: "pipeline_layout0063",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0064 = device00.createPipelineLayout({ 
        label: "pipeline_layout0064",
        bindGroupLayouts: [bind_group_layout001]
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
    query205.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout0065 = device00.createPipelineLayout({ 
        label: "pipeline_layout0065",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout0066 = device00.createPipelineLayout({ 
        label: "pipeline_layout0066",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout204]
    });
    query400.destroy()
    const pipeline_layout0067 = device00.createPipelineLayout({ 
        label: "pipeline_layout0067",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const pipeline_layout0068 = device00.createPipelineLayout({ 
        label: "pipeline_layout0068",
        bindGroupLayouts: [bind_group_layout007]
    });
    query201.destroy()
    query100.destroy()
    query200.destroy()
    
    const pipeline_layout0069 = device00.createPipelineLayout({ 
        label: "pipeline_layout0069",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    query204.destroy()
    const pipeline_layout0070 = device00.createPipelineLayout({ 
        label: "pipeline_layout0070",
        bindGroupLayouts: [bind_group_layout0014]
    });
    const pipeline_layout0071 = device00.createPipelineLayout({ 
        label: "pipeline_layout0071",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0072 = device00.createPipelineLayout({ 
        label: "pipeline_layout0072",
        bindGroupLayouts: [bind_group_layout0015]
    });
    query204.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    query400.destroy()
    const bind_group_layout0016 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0016",
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
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    query104.destroy()
    query105.destroy()
    query201.destroy()
    
    query105.destroy()
    query004.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0073 = device00.createPipelineLayout({ 
        label: "pipeline_layout0073",
        bindGroupLayouts: [bind_group_layout0012]
    });
    
    query100.destroy()
    const pipeline_layout0074 = device00.createPipelineLayout({ 
        label: "pipeline_layout0074",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    query204.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0075 = device00.createPipelineLayout({ 
        label: "pipeline_layout0075",
        bindGroupLayouts: [bind_group_layout0015]
    });
    query300.destroy()
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    query400.destroy()
    query007.destroy()
    
    query106.destroy()
    const pipeline_layout0076 = device00.createPipelineLayout({ 
        label: "pipeline_layout0076",
        bindGroupLayouts: [bind_group_layout008]
    });
    query300.destroy()
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout0077 = device00.createPipelineLayout({ 
        label: "pipeline_layout0077",
        bindGroupLayouts: [bind_group_layout009]
    });
    const pipeline_layout0078 = device00.createPipelineLayout({ 
        label: "pipeline_layout0078",
        bindGroupLayouts: [bind_group_layout008]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0079 = device00.createPipelineLayout({ 
        label: "pipeline_layout0079",
        bindGroupLayouts: [bind_group_layout005]
    });
    query000.destroy()
    
    query106.destroy()
    query400.destroy()
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const pipeline_layout0080 = device00.createPipelineLayout({ 
        label: "pipeline_layout0080",
        bindGroupLayouts: [bind_group_layout0013]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    query102.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0081 = device00.createPipelineLayout({ 
        label: "pipeline_layout0081",
        bindGroupLayouts: [bind_group_layout0016]
    });
    query301.destroy()
    
    
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout200]
    });
    query103.destroy()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
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
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout504]
    });
    query203.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    query300.destroy()
    
    query004.destroy()
    query004.destroy()
    const pipeline_layout2024 = device20.createPipelineLayout({ 
        label: "pipeline_layout2024",
        bindGroupLayouts: [bind_group_layout200]
    });
    query104.destroy()
    query009.destroy()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout0082 = device00.createPipelineLayout({ 
        label: "pipeline_layout0082",
        bindGroupLayouts: [bind_group_layout0012]
    });
    const pipeline_layout2025 = device20.createPipelineLayout({ 
        label: "pipeline_layout2025",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout504]
    });
    query201.destroy()
    const pipeline_layout0083 = device00.createPipelineLayout({ 
        label: "pipeline_layout0083",
        bindGroupLayouts: [bind_group_layout007]
    });
    query202.destroy()
    query008.destroy()
    
    const pipeline_layout0084 = device00.createPipelineLayout({ 
        label: "pipeline_layout0084",
        bindGroupLayouts: [bind_group_layout0012]
    });
    query006.destroy()
    const pipeline_layout0085 = device00.createPipelineLayout({ 
        label: "pipeline_layout0085",
        bindGroupLayouts: [bind_group_layout005]
    });
    query200.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout502]
    });
    query000.destroy()
    query202.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query207.destroy()
    query206.destroy()
    query401.destroy()
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    query008.destroy()
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0086 = device00.createPipelineLayout({ 
        label: "pipeline_layout0086",
        bindGroupLayouts: [bind_group_layout008]
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    query008.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query102.destroy()
    const pipeline_layout0087 = device00.createPipelineLayout({ 
        label: "pipeline_layout0087",
        bindGroupLayouts: [bind_group_layout0012]
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    
    const bind_group_layout0017 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0017",
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
    const bind_group_layout0018 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0018",
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
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout2026 = device20.createPipelineLayout({ 
        label: "pipeline_layout2026",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout504]
    });
}