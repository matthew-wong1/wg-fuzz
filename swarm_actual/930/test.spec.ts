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
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array0 = new Float32Array([0.0, -1.0, 0.25, 0.25, 0.25, 0.25, 1.0, 0.75, 0.0, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.25, 1.0, -0.5, -1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, 0.25, -0.5, -1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.25, 0.25, -0.25, -0.75, -1.0, 0.5, 0.25, 0.75, -0.75, -0.25, 0.25, 1.0, 0.25, 0.0, -0.75, 0.0, -0.75, -0.25, -0.5, 0.75, -1.0, 1.0, -0.25, -0.5, 0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 0.0, ]);
    device00.destroy();
    const array1 = new Float32Array([0.5, 0.75, 0.5, -0.75, 0.5, 0.25, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.5, 0.75, 0.25, -0.25, -1.0, -0.25, -0.25, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 0.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, -1.0, 0.5, -1.0, -1.0, -1.0, 1.0, -0.75, -0.25, 0.75, -0.25, -0.5, -0.25, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, -1.0, -0.5, 0.5, 1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 0.5, -0.75, -1.0, -0.75, -0.75, 1.0, 0.25, 0.5, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, 0.0, 0.75, -0.25, 1.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 0.0, -0.75, -0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.0, -0.25, -0.5, -0.5, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -0.5, -0.5, -0.25, 0.5, -0.75, 1.0, -0.75, -1.0, 1.0, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 1.0, -0.5, 0.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.5, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 0.0, 0.5, -0.5, -1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -1.0, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter7 = await gpu.requestAdapter({
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    buffer400.destroy()
    
    device50.destroy();
    
    
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    device60.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device70.destroy();
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const array3 = new Float32Array([1.0, 0.5, 0.25, 1.0, 1.0, 0.75, 0.75, -0.25, -0.25, -1.0, 1.0, -0.5, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, -1.0, -0.75, -1.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.75, -0.25, 1.0, 0.25, -0.5, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.25, -1.0, -0.5, 1.0, 0.25, 0.5, -0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.0, -1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.25, -0.75, 0.0, -0.25, 0.0, 0.0, 0.0, 0.25, -1.0, 0.25, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, 0.0, 1.0, 0.5, 1.0, 0.75, ]);
    
    
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const array4 = new Float32Array([-0.5, -0.5, 0.0, 0.25, 0.25, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.25, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.5, 0.25, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, -0.25, -1.0, -0.5, -0.25, 0.5, 1.0, 0.75, -0.75, 0.25, 0.75, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.25, 0.75, -1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, -0.5, -1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, -0.75, 0.25, -0.75, -1.0, 0.25, -0.5, 0.25, 1.0, 0.75, -0.25, -0.25, 0.0, ]);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout203]
    });
    
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
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    
    buffer800.destroy()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer201.destroy()
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
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
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer401.destroy()
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    
    buffer402.destroy()
    
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    buffer404.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    buffer801.destroy()
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer405.destroy()
    const array5 = new Float32Array([-0.5, -1.0, -0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 1.0, 0.5, -0.25, -0.25, 0.0, -1.0, -0.5, 0.75, 1.0, 0.0, -0.75, 0.25, 1.0, 0.5, 0.5, 0.25, 1.0, -0.25, 1.0, 0.5, -0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, 0.25, -0.5, 0.25, 1.0, -0.25, 0.75, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.25, -0.5, 0.25, -1.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.5, 0.0, 0.5, 0.0, -1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.0, 0.75, -0.5, ]);
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
    
    
    
    
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout406]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout406]
    });
    
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout406]
    });
    
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout405]
    });
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const pipeline_layout4019 = device40.createPipelineLayout({ 
        label: "pipeline_layout4019",
        bindGroupLayouts: [bind_group_layout401]
    });
    device100.destroy();
    device20.destroy();
    
    const pipeline_layout4020 = device40.createPipelineLayout({ 
        label: "pipeline_layout4020",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const pipeline_layout4021 = device40.createPipelineLayout({ 
        label: "pipeline_layout4021",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer900.destroy()
    
    
    
    device80.destroy();
    const pipeline_layout4022 = device40.createPipelineLayout({ 
        label: "pipeline_layout4022",
        bindGroupLayouts: [bind_group_layout406]
    });
    const array6 = new Float32Array([0.5, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, 0.0, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -0.5, 1.0, 1.0, 0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.5, 0.0, 0.5, -0.25, 0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, -0.75, 0.5, 0.5, -0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.5, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, 0.75, 0.5, 0.75, 0.75, 0.5, -0.5, ]);
    
    const pipeline_layout4023 = device40.createPipelineLayout({ 
        label: "pipeline_layout4023",
        bindGroupLayouts: [bind_group_layout402]
    });
    device90.destroy();
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer406, 0, array3, 0, array3.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout4024 = device40.createPipelineLayout({ 
        label: "pipeline_layout4024",
        bindGroupLayouts: [bind_group_layout404]
    });
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer406, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    const pipeline_layout4025 = device40.createPipelineLayout({ 
        label: "pipeline_layout4025",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout4026 = device40.createPipelineLayout({ 
        label: "pipeline_layout4026",
        bindGroupLayouts: [bind_group_layout403]
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    
    
    device40.queue.writeBuffer(buffer407, 0, array2, 0, array2.length);
    
    const pipeline_layout4027 = device40.createPipelineLayout({ 
        label: "pipeline_layout4027",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer407.destroy()
    
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    
    const pipeline_layout4028 = device40.createPipelineLayout({ 
        label: "pipeline_layout4028",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const pipeline_layout4029 = device40.createPipelineLayout({ 
        label: "pipeline_layout4029",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout4030 = device40.createPipelineLayout({ 
        label: "pipeline_layout4030",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout4031 = device40.createPipelineLayout({ 
        label: "pipeline_layout4031",
        bindGroupLayouts: [bind_group_layout407]
    });
    buffer408.destroy()
    
    device40.queue.writeBuffer(buffer406, 0, array6, 0, array6.length);
    const pipeline_layout4032 = device40.createPipelineLayout({ 
        label: "pipeline_layout4032",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout4033 = device40.createPipelineLayout({ 
        label: "pipeline_layout4033",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
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
    
    const array7 = new Float32Array([0.75, 0.25, 0.25, -0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.0, 0.25, -0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, -0.5, -1.0, 0.5, 0.5, 0.25, 1.0, 0.25, -1.0, -1.0, 0.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, 0.75, 0.0, 1.0, -0.25, 1.0, 0.75, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, -1.0, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, -0.5, ]);
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    buffer1200.destroy()
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    device140.destroy();
    
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    const array8 = new Float32Array([-0.75, -1.0, -1.0, -0.75, 1.0, 1.0, 0.5, 0.0, -1.0, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, 1.0, 1.0, -1.0, -0.25, -1.0, 0.25, -1.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, 0.25, -0.25, -0.5, 0.5, 0.5, 0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -0.75, 0.25, -1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, -1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.5, -1.0, -0.5, -0.5, 0.0, 0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -0.25, -1.0, 1.0, ]);
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout1203 = device120.createPipelineLayout({ 
        label: "pipeline_layout1203",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const pipeline_layout1204 = device120.createPipelineLayout({ 
        label: "pipeline_layout1204",
        bindGroupLayouts: [bind_group_layout1202]
    });
    buffer1500.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const array9 = new Float32Array([-0.25, -1.0, 0.5, -1.0, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, 0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.5, 0.5, -0.75, -0.75, 0.0, 0.0, 1.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, -0.75, -0.75, -0.25, 0.75, 0.5, -0.25, 1.0, -0.75, -1.0, -1.0, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.75, 0.75, 0.0, 0.75, 0.25, 0.75, -0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -0.75, -0.5, -0.5, 0.75, ]);
    
    
    
    const pipeline_layout1205 = device120.createPipelineLayout({ 
        label: "pipeline_layout1205",
        bindGroupLayouts: [bind_group_layout1200]
    });
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
    
    
    
    const array10 = new Float32Array([0.5, 1.0, 0.5, 0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.25, -0.5, -0.75, -0.75, -0.25, 0.0, -0.5, -0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.75, 0.0, -1.0, 1.0, 1.0, -1.0, 1.0, 0.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 1.0, -0.5, 0.75, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, 0.75, 0.75, 0.5, 1.0, -1.0, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.5, -1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -0.5, -1.0, ]);
    device150.destroy();
    device130.destroy();
    device120.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    
    
    
    const array11 = new Float32Array([0.25, 0.0, 0.75, -1.0, 0.25, 0.0, -0.5, 0.75, -1.0, -0.75, 0.0, 0.25, 0.5, 0.0, 1.0, 1.0, 0.5, -1.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, 0.25, 0.5, 0.5, -0.25, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, 0.0, -0.75, 0.5, -0.25, 0.0, 0.75, 0.5, 1.0, 0.75, -0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, -1.0, 0.5, -0.25, -0.25, 0.0, -0.5, 0.25, 0.0, -1.0, 0.25, 0.75, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, -0.25, 0.25, -0.75, -0.25, 0.75, -0.5, -1.0, ]);
    
    
    
    
    
    
    
    
    
    
    device160.destroy();
    
    
    
    
    
    
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array12 = new Float32Array([-0.25, -0.25, -0.5, 0.0, 0.75, 0.0, 1.0, -0.5, 0.75, 0.75, 0.0, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, -1.0, 0.25, 0.25, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, -0.5, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, 0.25, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, 0.25, 0.25, -0.75, -0.75, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, 0.25, 1.0, 1.0, 1.0, 0.75, -1.0, 0.5, 0.25, 0.75, 0.75, -1.0, -1.0, -0.75, -0.5, 0.75, 1.0, -1.0, -1.0, 0.5, -0.25, -0.25, -1.0, 0.0, -0.5, 0.5, -0.25, 0.0, -0.25, -0.75, -1.0, 0.75, -0.25, ]);
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    
    
    
    
    
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
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array13 = new Float32Array([0.25, 1.0, -0.75, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 1.0, 0.75, 0.75, 0.5, 1.0, -1.0, 0.25, 0.0, 0.0, 0.75, 0.25, 0.25, 0.25, -1.0, -0.5, -0.25, 0.5, 0.25, -0.75, 0.0, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -0.5, 0.0, 0.5, 0.75, 0.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, -0.75, 0.5, 0.25, 0.0, 0.0, 0.5, -0.75, 0.75, 0.75, 0.5, 0.75, -0.5, 0.0, -0.75, 0.5, 0.25, -0.5, 0.75, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, -0.75, -0.5, -0.5, -1.0, -0.25, 0.25, 0.25, 0.25, -0.75, -1.0, 0.5, -0.75, -0.75, 0.25, 0.5, 0.25, -0.75, ]);
    const pipeline_layout1700 = device170.createPipelineLayout({ 
        label: "pipeline_layout1700",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    
    
    
    
    
    
    
    
    
    const array14 = new Float32Array([0.0, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.5, -1.0, 0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 1.0, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, -0.25, -0.5, 0.25, 0.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.5, 0.5, -1.0, -1.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.75, 0.5, -0.5, 1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.0, -0.75, -0.5, 0.0, -0.25, -1.0, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, -1.0, -0.25, ]);
    
    
    
    
    const pipeline_layout1701 = device170.createPipelineLayout({ 
        label: "pipeline_layout1701",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    const pipeline_layout1702 = device170.createPipelineLayout({ 
        label: "pipeline_layout1702",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    const array15 = new Float32Array([-0.5, -0.25, 0.5, 0.5, -0.75, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, -0.75, -0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -0.75, 0.75, -0.5, 0.0, 0.75, -0.75, -1.0, -0.5, 1.0, 0.0, 0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, -1.0, -1.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, -0.5, -1.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 0.0, -0.25, 0.5, 0.5, -0.75, -1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.0, 0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, -0.5, 0.75, 0.75, -0.25, -1.0, -0.75, ]);
    
    
    
    const pipeline_layout1703 = device170.createPipelineLayout({ 
        label: "pipeline_layout1703",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    
    
    
    const bind_group_layout1701 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1701",
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
    
    const pipeline_layout1704 = device170.createPipelineLayout({ 
        label: "pipeline_layout1704",
        bindGroupLayouts: [bind_group_layout1701]
    });
    
    const pipeline_layout1705 = device170.createPipelineLayout({ 
        label: "pipeline_layout1705",
        bindGroupLayouts: [bind_group_layout1701]
    });
    
    const pipeline_layout1706 = device170.createPipelineLayout({ 
        label: "pipeline_layout1706",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array16 = new Float32Array([0.5, -0.5, 1.0, -1.0, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 0.25, 0.0, -0.5, 0.0, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, -0.5, 0.25, -0.75, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, -0.75, 0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.0, 0.5, -0.75, -1.0, -0.25, -1.0, -0.5, -0.75, -0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 1.0, 0.5, 0.25, -0.25, -1.0, 0.5, 0.75, 0.5, 0.0, -0.25, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 0.75, -1.0, 0.75, -0.5, -0.25, -0.25, -0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, 0.0, -0.25, -1.0, ]);
    
    
    
    
    
    
    
    const bind_group_layout1702 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1702",
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
    const pipeline_layout1707 = device170.createPipelineLayout({ 
        label: "pipeline_layout1707",
        bindGroupLayouts: [bind_group_layout1701]
    });
    
    
    
    const pipeline_layout1708 = device170.createPipelineLayout({ 
        label: "pipeline_layout1708",
        bindGroupLayouts: [bind_group_layout1702]
    });
    
    
    
    const pipeline_layout1709 = device170.createPipelineLayout({ 
        label: "pipeline_layout1709",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    const pipeline_layout17010 = device170.createPipelineLayout({ 
        label: "pipeline_layout17010",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    
    
    
    
    
    const bind_group_layout1703 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1703",
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
    
    buffer1700.destroy()
}