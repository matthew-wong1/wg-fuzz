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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    device30.destroy();
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("out-of-memory");
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.pushErrorScope("validation");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device60.destroy();
    device40.destroy();
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
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device80.destroy();
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
    device90.pushErrorScope("internal");
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device70.pushErrorScope("validation");
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout901]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("out-of-memory");
    
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    device100.destroy();
    
    
    
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout901]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    device70.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout904 = device90.createPipelineLayout({ 
        label: "pipeline_layout904",
        bindGroupLayouts: [bind_group_layout901]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.pushErrorScope("internal");
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout905 = device90.createPipelineLayout({ 
        label: "pipeline_layout905",
        bindGroupLayouts: [bind_group_layout901]
    });
    const pipeline_layout906 = device90.createPipelineLayout({ 
        label: "pipeline_layout906",
        bindGroupLayouts: [bind_group_layout901]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout907 = device90.createPipelineLayout({ 
        label: "pipeline_layout907",
        bindGroupLayouts: [bind_group_layout900]
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout908 = device90.createPipelineLayout({ 
        label: "pipeline_layout908",
        bindGroupLayouts: [bind_group_layout901]
    });
    
    
    device90.pushErrorScope("internal");
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
    const pipeline_layout909 = device90.createPipelineLayout({ 
        label: "pipeline_layout909",
        bindGroupLayouts: [bind_group_layout900]
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device120.pushErrorScope("internal");
    const pipeline_layout9010 = device90.createPipelineLayout({ 
        label: "pipeline_layout9010",
        bindGroupLayouts: [bind_group_layout901]
    });
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device110.destroy();
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.pushErrorScope("out-of-memory");
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout9011 = device90.createPipelineLayout({ 
        label: "pipeline_layout9011",
        bindGroupLayouts: [bind_group_layout901]
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const pipeline_layout9012 = device90.createPipelineLayout({ 
        label: "pipeline_layout9012",
        bindGroupLayouts: [bind_group_layout901]
    });
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const pipeline_layout9013 = device90.createPipelineLayout({ 
        label: "pipeline_layout9013",
        bindGroupLayouts: [bind_group_layout902]
    });
    const pipeline_layout9014 = device90.createPipelineLayout({ 
        label: "pipeline_layout9014",
        bindGroupLayouts: [bind_group_layout901]
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    device120.pushErrorScope("out-of-memory");
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
        bindGroupLayouts: [bind_group_layout1301]
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1301]
    });
    device120.pushErrorScope("validation");
    const pipeline_layout9015 = device90.createPipelineLayout({ 
        label: "pipeline_layout9015",
        bindGroupLayouts: [bind_group_layout901]
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    const pipeline_layout9016 = device90.createPipelineLayout({ 
        label: "pipeline_layout9016",
        bindGroupLayouts: [bind_group_layout902]
    });
    
    
    device140.pushErrorScope("validation");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    device90.pushErrorScope("out-of-memory");
    
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout9017 = device90.createPipelineLayout({ 
        label: "pipeline_layout9017",
        bindGroupLayouts: [bind_group_layout901]
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.pushErrorScope("validation");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.destroy();
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    device120.pushErrorScope("out-of-memory");
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
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1303 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1303",
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
    device140.pushErrorScope("internal");
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device160.destroy();
    
    device130.destroy();
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
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
    
    
    const pipeline_layout1402 = device140.createPipelineLayout({ 
        label: "pipeline_layout1402",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    
    device150.pushErrorScope("out-of-memory");
    
    
    const pipeline_layout1403 = device140.createPipelineLayout({ 
        label: "pipeline_layout1403",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const bind_group_layout1402 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1402",
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
    
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1500]
    });
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1404 = device140.createPipelineLayout({ 
        label: "pipeline_layout1404",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const bind_group_layout1403 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1403",
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
    const pipeline_layout1405 = device140.createPipelineLayout({ 
        label: "pipeline_layout1405",
        bindGroupLayouts: [bind_group_layout1400]
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
    
    
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device120.pushErrorScope("validation");
    const bind_group_layout1203 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1203",
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
    const pipeline_layout1502 = device150.createPipelineLayout({ 
        label: "pipeline_layout1502",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const pipeline_layout1406 = device140.createPipelineLayout({ 
        label: "pipeline_layout1406",
        bindGroupLayouts: [bind_group_layout1402]
    });
    const pipeline_layout1503 = device150.createPipelineLayout({ 
        label: "pipeline_layout1503",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const pipeline_layout1203 = device120.createPipelineLayout({ 
        label: "pipeline_layout1203",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const pipeline_layout1407 = device140.createPipelineLayout({ 
        label: "pipeline_layout1407",
        bindGroupLayouts: [bind_group_layout1403]
    });
    
    const pipeline_layout1408 = device140.createPipelineLayout({ 
        label: "pipeline_layout1408",
        bindGroupLayouts: [bind_group_layout1403]
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1404 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1404",
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
    const pipeline_layout1204 = device120.createPipelineLayout({ 
        label: "pipeline_layout1204",
        bindGroupLayouts: [bind_group_layout1201]
    });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.pushErrorScope("internal");
    
    const pipeline_layout1205 = device120.createPipelineLayout({ 
        label: "pipeline_layout1205",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const pipeline_layout1409 = device140.createPipelineLayout({ 
        label: "pipeline_layout1409",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    device140.destroy();
    
    device170.destroy();
    const pipeline_layout1206 = device120.createPipelineLayout({ 
        label: "pipeline_layout1206",
        bindGroupLayouts: [bind_group_layout1203]
    });
    device150.destroy();
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1207 = device120.createPipelineLayout({ 
        label: "pipeline_layout1207",
        bindGroupLayouts: [bind_group_layout1202]
    });
    const pipeline_layout1208 = device120.createPipelineLayout({ 
        label: "pipeline_layout1208",
        bindGroupLayouts: [bind_group_layout1203]
    });
    const pipeline_layout1209 = device120.createPipelineLayout({ 
        label: "pipeline_layout1209",
        bindGroupLayouts: [bind_group_layout1203]
    });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const bind_group_layout1204 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1204",
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
    const pipeline_layout12010 = device120.createPipelineLayout({ 
        label: "pipeline_layout12010",
        bindGroupLayouts: [bind_group_layout1203]
    });
    device200.pushErrorScope("validation");
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    device220.pushErrorScope("out-of-memory");
    const bind_group_layout1205 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1205",
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
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    device200.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device180.destroy();
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
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    device220.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1206 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1206",
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
    
    const pipeline_layout12011 = device120.createPipelineLayout({ 
        label: "pipeline_layout12011",
        bindGroupLayouts: [bind_group_layout1203]
    });
    device220.destroy();
    
    const pipeline_layout12012 = device120.createPipelineLayout({ 
        label: "pipeline_layout12012",
        bindGroupLayouts: [bind_group_layout1205]
    });
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout2000 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2000",
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
    
    device190.pushErrorScope("out-of-memory");
    const pipeline_layout12013 = device120.createPipelineLayout({ 
        label: "pipeline_layout12013",
        bindGroupLayouts: [bind_group_layout1202]
    });
    const pipeline_layout12014 = device120.createPipelineLayout({ 
        label: "pipeline_layout12014",
        bindGroupLayouts: [bind_group_layout1204]
    });
    
    
    const pipeline_layout12015 = device120.createPipelineLayout({ 
        label: "pipeline_layout12015",
        bindGroupLayouts: [bind_group_layout1202]
    });
    
    const pipeline_layout2000 = device200.createPipelineLayout({ 
        label: "pipeline_layout2000",
        bindGroupLayouts: [bind_group_layout2000]
    });
    
    const pipeline_layout12016 = device120.createPipelineLayout({ 
        label: "pipeline_layout12016",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    device190.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device200.destroy();
    const pipeline_layout12017 = device120.createPipelineLayout({ 
        label: "pipeline_layout12017",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const bind_group_layout1207 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1207",
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
    const query1204 = device120.createQuerySet({
        label: "query1204",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout12018 = device120.createPipelineLayout({ 
        label: "pipeline_layout12018",
        bindGroupLayouts: [bind_group_layout1202]
    });
    device210.pushErrorScope("internal");
    device190.destroy();
    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    const bind_group_layout2300 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2300",
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
    const query2300 = device230.createQuerySet({
        label: "query2300",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout2301 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2301",
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
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device230.destroy();
    
    
    
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout2101 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2101",
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
    
    
    device210.destroy();
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    device240.destroy();
    device250.destroy();
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    device260.pushErrorScope("validation");
    const bind_group_layout2600 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2600",
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
    
    const query2600 = device260.createQuerySet({
        label: "query2600",
        type: "occlusion",
        count: 32,
    });
    device260.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device260.pushErrorScope("internal");
    device260.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query2601 = device260.createQuerySet({
        label: "query2601",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout2601 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2601",
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
    
    const pipeline_layout2600 = device260.createPipelineLayout({ 
        label: "pipeline_layout2600",
        bindGroupLayouts: [bind_group_layout2601]
    });
    const pipeline_layout2601 = device260.createPipelineLayout({ 
        label: "pipeline_layout2601",
        bindGroupLayouts: [bind_group_layout2600]
    });
    
    device260.pushErrorScope("internal");
    
    
    const pipeline_layout2602 = device260.createPipelineLayout({ 
        label: "pipeline_layout2602",
        bindGroupLayouts: [bind_group_layout2600]
    });
    
    
    
    
    const pipeline_layout2603 = device260.createPipelineLayout({ 
        label: "pipeline_layout2603",
        bindGroupLayouts: [bind_group_layout2601]
    });
    
    const bind_group_layout2602 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2602",
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
    const query2602 = device260.createQuerySet({
        label: "query2602",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2604 = device260.createPipelineLayout({ 
        label: "pipeline_layout2604",
        bindGroupLayouts: [bind_group_layout2600]
    });
    const pipeline_layout2605 = device260.createPipelineLayout({ 
        label: "pipeline_layout2605",
        bindGroupLayouts: [bind_group_layout2601]
    });
    const query2603 = device260.createQuerySet({
        label: "query2603",
        type: "occlusion",
        count: 32,
    });
    const query2604 = device260.createQuerySet({
        label: "query2604",
        type: "occlusion",
        count: 32,
    });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query2605 = device260.createQuerySet({
        label: "query2605",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2606 = device260.createPipelineLayout({ 
        label: "pipeline_layout2606",
        bindGroupLayouts: [bind_group_layout2601]
    });
    const bind_group_layout2603 = device260.createBindGroupLayout({ 
        label: "bind_group_layout2603",
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
    const pipeline_layout2607 = device260.createPipelineLayout({ 
        label: "pipeline_layout2607",
        bindGroupLayouts: [bind_group_layout2602]
    });
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout2608 = device260.createPipelineLayout({ 
        label: "pipeline_layout2608",
        bindGroupLayouts: [bind_group_layout2603]
    });
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    const query2606 = device260.createQuerySet({
        label: "query2606",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2609 = device260.createPipelineLayout({ 
        label: "pipeline_layout2609",
        bindGroupLayouts: [bind_group_layout2602]
    });
    
    const bind_group_layout2700 = device270.createBindGroupLayout({ 
        label: "bind_group_layout2700",
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
    
    device270.destroy();
    const pipeline_layout26010 = device260.createPipelineLayout({ 
        label: "pipeline_layout26010",
        bindGroupLayouts: [bind_group_layout2602]
    });
    
    
    device260.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    
    
    device260.destroy();
    device280.destroy();
    const adapter29 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    device290.pushErrorScope("out-of-memory");
    const query2900 = device290.createQuerySet({
        label: "query2900",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout2900 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2900",
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
    
    device290.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout2900 = device290.createPipelineLayout({ 
        label: "pipeline_layout2900",
        bindGroupLayouts: [bind_group_layout2900]
    });
    
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device290.pushErrorScope("validation");
    device290.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device290.destroy();
    const adapter31 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter32 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device310 = await adapter31!.requestDevice({ label: "device310" });
    device310.pushErrorScope("out-of-memory");
    const device320 = await adapter32!.requestDevice({ label: "device320" });
    const query3100 = device310.createQuerySet({
        label: "query3100",
        type: "occlusion",
        count: 32,
    });
    device320.pushErrorScope("internal");
    const device300 = await adapter30!.requestDevice({ label: "device300" });
    const query3000 = device300.createQuerySet({
        label: "query3000",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout3200 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3200",
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
    const pipeline_layout3200 = device320.createPipelineLayout({ 
        label: "pipeline_layout3200",
        bindGroupLayouts: [bind_group_layout3200]
    });
    device300.pushErrorScope("validation");
    
    const query3101 = device310.createQuerySet({
        label: "query3101",
        type: "occlusion",
        count: 32,
    });
    device310.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout3100 = device310.createBindGroupLayout({ 
        label: "bind_group_layout3100",
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
    
    
    
    const query3200 = device320.createQuerySet({
        label: "query3200",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout3201 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3201",
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
    device300.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device310.destroy();
    const query3001 = device300.createQuerySet({
        label: "query3001",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout3202 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3202",
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
    
    
    const bind_group_layout3203 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3203",
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
    
    
    device300.destroy();
    const bind_group_layout3204 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3204",
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
    const pipeline_layout3201 = device320.createPipelineLayout({ 
        label: "pipeline_layout3201",
        bindGroupLayouts: [bind_group_layout3202]
    });
    device320.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query3201 = device320.createQuerySet({
        label: "query3201",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout3202 = device320.createPipelineLayout({ 
        label: "pipeline_layout3202",
        bindGroupLayouts: [bind_group_layout3200]
    });
    device320.pushErrorScope("validation");
    device320.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const pipeline_layout3203 = device320.createPipelineLayout({ 
        label: "pipeline_layout3203",
        bindGroupLayouts: [bind_group_layout3200]
    });
}