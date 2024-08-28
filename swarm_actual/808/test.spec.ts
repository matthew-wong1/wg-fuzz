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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
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
    device20.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    buffer500.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer502.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
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
    device40.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    buffer600.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    buffer700.destroy()
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device70.destroy();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
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
    
    
    device60.destroy();
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
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
    
    
    
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device90.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.destroy();
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
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
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
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1102]
    });
    
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
    });
    device120.destroy();
    
    const bind_group_layout1103 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1103",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    buffer1100.destroy()
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1103]
    });
    const pipeline_layout1104 = device110.createPipelineLayout({ 
        label: "pipeline_layout1104",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout1104 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1104",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout1105 = device110.createPipelineLayout({ 
        label: "pipeline_layout1105",
        bindGroupLayouts: [bind_group_layout1102]
    });
    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const pipeline_layout1106 = device110.createPipelineLayout({ 
        label: "pipeline_layout1106",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const pipeline_layout1107 = device110.createPipelineLayout({ 
        label: "pipeline_layout1107",
        bindGroupLayouts: [bind_group_layout1104]
    });
    const buffer1104 = device110.createBuffer({
        label: "buffer1104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const bind_group_layout1105 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1105",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout1108 = device110.createPipelineLayout({ 
        label: "pipeline_layout1108",
        bindGroupLayouts: [bind_group_layout1100]
    });
    buffer1102.destroy()
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
    
    buffer1101.destroy()
    const pipeline_layout1109 = device110.createPipelineLayout({ 
        label: "pipeline_layout1109",
        bindGroupLayouts: [bind_group_layout1100]
    });
    buffer1103.destroy()
    
    const pipeline_layout11010 = device110.createPipelineLayout({ 
        label: "pipeline_layout11010",
        bindGroupLayouts: [bind_group_layout1103]
    });
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const pipeline_layout11011 = device110.createPipelineLayout({ 
        label: "pipeline_layout11011",
        bindGroupLayouts: [bind_group_layout1104]
    });
    device110.destroy();
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout1301 = device130.createPipelineLayout({ 
        label: "pipeline_layout1301",
        bindGroupLayouts: [bind_group_layout1300]
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
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
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    
    device160.destroy();
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
    const pipeline_layout1302 = device130.createPipelineLayout({ 
        label: "pipeline_layout1302",
        bindGroupLayouts: [bind_group_layout1301]
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
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1402]
    });
    
    device130.destroy();
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1401]
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device150.destroy();
    device140.destroy();
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
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
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1800]
    });
    device170.destroy();
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout1801 = device180.createPipelineLayout({ 
        label: "pipeline_layout1801",
        bindGroupLayouts: [bind_group_layout1800]
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    device190.destroy();
    device200.destroy();
    
    
    const pipeline_layout1802 = device180.createPipelineLayout({ 
        label: "pipeline_layout1802",
        bindGroupLayouts: [bind_group_layout1801]
    });
    const pipeline_layout1803 = device180.createPipelineLayout({ 
        label: "pipeline_layout1803",
        bindGroupLayouts: [bind_group_layout1801]
    });
    const pipeline_layout1804 = device180.createPipelineLayout({ 
        label: "pipeline_layout1804",
        bindGroupLayouts: [bind_group_layout1800]
    });
    device180.destroy();
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    device210.destroy();
    
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    const buffer2400 = device240.createBuffer({
        label: "buffer2400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device220.destroy();
    const bind_group_layout2400 = device240.createBindGroupLayout({ 
        label: "bind_group_layout2400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module2400_code = "";
    try {
        shader_module2400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2400 = await device240.createShaderModule({ label: "shader_module2400", code: shader_module2400_code })
    
    const bind_group_layout2401 = device240.createBindGroupLayout({ 
        label: "bind_group_layout2401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout2402 = device240.createBindGroupLayout({ 
        label: "bind_group_layout2402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    buffer2400.destroy()
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    const pipeline_layout2400 = device240.createPipelineLayout({ 
        label: "pipeline_layout2400",
        bindGroupLayouts: [bind_group_layout2402]
    });
    const pipeline_layout2401 = device240.createPipelineLayout({ 
        label: "pipeline_layout2401",
        bindGroupLayouts: [bind_group_layout2400]
    });
    device240.destroy();
    
    const buffer2600 = device260.createBuffer({
        label: "buffer2600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    device260.destroy();
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
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer2300.destroy()
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
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    const bind_group_layout2500 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const bind_group_layout2302 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout2501 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout2303 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2303",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device250.destroy();
    var shader_module2300_code = "";
    try {
        shader_module2300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2300 = await device230.createShaderModule({ label: "shader_module2300", code: shader_module2300_code })
    const pipeline_layout2300 = device230.createPipelineLayout({ 
        label: "pipeline_layout2300",
        bindGroupLayouts: [bind_group_layout2303]
    });
    const pipeline_layout2301 = device230.createPipelineLayout({ 
        label: "pipeline_layout2301",
        bindGroupLayouts: [bind_group_layout2300]
    });
    const bind_group_layout2304 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2304",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout2302 = device230.createPipelineLayout({ 
        label: "pipeline_layout2302",
        bindGroupLayouts: [bind_group_layout2301]
    });
    const buffer2301 = device230.createBuffer({
        label: "buffer2301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer2302 = device230.createBuffer({
        label: "buffer2302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout2303 = device230.createPipelineLayout({ 
        label: "pipeline_layout2303",
        bindGroupLayouts: [bind_group_layout2304]
    });
    
    const pipeline_layout2304 = device230.createPipelineLayout({ 
        label: "pipeline_layout2304",
        bindGroupLayouts: [bind_group_layout2302]
    });
    device230.destroy();
    
    
    
    
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    device270.destroy();
    
    
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    
    const buffer2800 = device280.createBuffer({
        label: "buffer2800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const bind_group_layout2800 = device280.createBindGroupLayout({ 
        label: "bind_group_layout2800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    device280.destroy();
    const buffer2900 = device290.createBuffer({
        label: "buffer2900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    
    const bind_group_layout2901 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2901",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout2900 = device290.createPipelineLayout({ 
        label: "pipeline_layout2900",
        bindGroupLayouts: [bind_group_layout2901]
    });
    const pipeline_layout2901 = device290.createPipelineLayout({ 
        label: "pipeline_layout2901",
        bindGroupLayouts: [bind_group_layout2901]
    });
    const bind_group_layout2902 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2902",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer2901 = device290.createBuffer({
        label: "buffer2901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout2902 = device290.createPipelineLayout({ 
        label: "pipeline_layout2902",
        bindGroupLayouts: [bind_group_layout2900]
    });
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout2903 = device290.createBindGroupLayout({ 
        label: "bind_group_layout2903",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    const adapter31 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout2903 = device290.createPipelineLayout({ 
        label: "pipeline_layout2903",
        bindGroupLayouts: [bind_group_layout2901]
    });
    const pipeline_layout2904 = device290.createPipelineLayout({ 
        label: "pipeline_layout2904",
        bindGroupLayouts: [bind_group_layout2900]
    });
    const pipeline_layout2905 = device290.createPipelineLayout({ 
        label: "pipeline_layout2905",
        bindGroupLayouts: [bind_group_layout2901]
    });
    device290.destroy();
    
    
    
    
    const device300 = await adapter30!.requestDevice({ label: "device300" });
    const buffer3000 = device300.createBuffer({
        label: "buffer3000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer3000.destroy()
    var shader_module3000_code = "";
    try {
        shader_module3000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3000 = await device300.createShaderModule({ label: "shader_module3000", code: shader_module3000_code })
    
    const device310 = await adapter31!.requestDevice({ label: "device310" });
    
    const bind_group_layout3000 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
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
    device310.destroy();
    
    const buffer3001 = device300.createBuffer({
        label: "buffer3001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module3001_code = "";
    try {
        shader_module3001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3001 = await device300.createShaderModule({ label: "shader_module3001", code: shader_module3001_code })
    const adapter32 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer3002 = device300.createBuffer({
        label: "buffer3002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer3002.destroy()
    const pipeline_layout3000 = device300.createPipelineLayout({ 
        label: "pipeline_layout3000",
        bindGroupLayouts: [bind_group_layout3000]
    });
    
    device300.destroy();
    
    
    
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device320 = await adapter32!.requestDevice({ label: "device320" });
    
    
    const buffer3200 = device320.createBuffer({
        label: "buffer3200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device330 = await adapter33!.requestDevice({ label: "device330" });
    
    var shader_module3200_code = "";
    try {
        shader_module3200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3200 = await device320.createShaderModule({ label: "shader_module3200", code: shader_module3200_code })
    
    
    device330.destroy();
    
    const buffer3201 = device320.createBuffer({
        label: "buffer3201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    
    buffer3201.destroy()
    
    
    
    const pipeline_layout3200 = device320.createPipelineLayout({ 
        label: "pipeline_layout3200",
        bindGroupLayouts: [bind_group_layout3200]
    });
    const adapter34 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module3201_code = "";
    try {
        shader_module3201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3201 = await device320.createShaderModule({ label: "shader_module3201", code: shader_module3201_code })
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
    device320.destroy();
    
    
    const device340 = await adapter34!.requestDevice({ label: "device340" });
    const bind_group_layout3400 = device340.createBindGroupLayout({ 
        label: "bind_group_layout3400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout3400 = device340.createPipelineLayout({ 
        label: "pipeline_layout3400",
        bindGroupLayouts: [bind_group_layout3400]
    });
    var shader_module3400_code = "";
    try {
        shader_module3400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3400 = await device340.createShaderModule({ label: "shader_module3400", code: shader_module3400_code })
    const buffer3400 = device340.createBuffer({
        label: "buffer3400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout3401 = device340.createPipelineLayout({ 
        label: "pipeline_layout3401",
        bindGroupLayouts: [bind_group_layout3400]
    });
    buffer3400.destroy()
    const bind_group_layout3401 = device340.createBindGroupLayout({ 
        label: "bind_group_layout3401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout3402 = device340.createBindGroupLayout({ 
        label: "bind_group_layout3402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const buffer3401 = device340.createBuffer({
        label: "buffer3401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer3401.destroy()
    const adapter35 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module3401_code = "";
    try {
        shader_module3401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3401 = await device340.createShaderModule({ label: "shader_module3401", code: shader_module3401_code })
    const adapter36 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer3402 = device340.createBuffer({
        label: "buffer3402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device340.destroy();
    
    
    const device350 = await adapter35!.requestDevice({ label: "device350" });
    
    device350.destroy();
    const adapter37 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device380 = await adapter38!.requestDevice({ label: "device380" });
    
    var shader_module3800_code = "";
    try {
        shader_module3800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3800 = await device380.createShaderModule({ label: "shader_module3800", code: shader_module3800_code })
    
    device380.destroy();
    const device360 = await adapter36!.requestDevice({ label: "device360" });
    device360.destroy();
    const adapter39 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device370 = await adapter37!.requestDevice({ label: "device370" });
    const buffer3700 = device370.createBuffer({
        label: "buffer3700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device370.destroy();
    const adapter40 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device400 = await adapter40!.requestDevice({ label: "device400" });
    const buffer4000 = device400.createBuffer({
        label: "buffer4000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter41 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device410 = await adapter41!.requestDevice({ label: "device410" });
    const device390 = await adapter39!.requestDevice({ label: "device390" });
    
    
    
    
    
    device410.destroy();
    
    device400.destroy();
    const buffer3900 = device390.createBuffer({
        label: "buffer3900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer3900.destroy()
    
    
    
    const adapter42 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter43 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter44 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter45 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer3901 = device390.createBuffer({
        label: "buffer3901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device430 = await adapter43!.requestDevice({ label: "device430" });
    const device440 = await adapter44!.requestDevice({ label: "device440" });
    const device420 = await adapter42!.requestDevice({ label: "device420" });
    device420.destroy();
    device430.destroy();
    const adapter46 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer3902 = device390.createBuffer({
        label: "buffer3902",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer3902.destroy()
}