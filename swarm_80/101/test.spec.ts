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
    const array0 = new Float32Array([0.5, 0.25, -0.75, -0.75, -0.75, 0.5, 0.75, 1.0, 1.0, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, -0.75, -1.0, 1.0, -0.25, 0.5, 0.0, 0.25, -0.25, 0.75, -1.0, -0.5, -0.75, -1.0, 0.5, -0.5, -0.75, -0.5, 0.25, 1.0, -0.5, 1.0, 0.5, 0.25, 0.25, 0.75, 0.75, -0.5, -1.0, -0.5, 0.25, 0.25, -0.25, 0.5, -0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.0, 0.5, 0.75, 0.5, -0.75, -0.5, 0.75, 0.25, 0.25, -0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 0.0, -0.5, 0.25, 1.0, 0.0, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, -0.75, 0.75, -0.25, -0.75, 0.5, -0.25, 0.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.25, 1.0, 0.5, -0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, -1.0, -0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -0.75, 0.75, 0.0, -0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.75, -0.5, 0.5, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, 0.0, -0.75, -0.75, 1.0, -0.75, -0.5, -0.5, -0.25, 0.5, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer100.destroy()
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    buffer101.destroy()
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device40.destroy();
    
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer104.destroy()
    const array2 = new Float32Array([-0.75, 1.0, -1.0, 1.0, 0.25, -0.25, 0.25, -0.75, -1.0, -0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 0.0, -0.25, 0.0, 0.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.25, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.75, 0.25, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.75, -1.0, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, -0.25, 0.25, -0.25, -0.75, 0.5, -0.75, -0.25, 0.75, -0.25, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.0, -0.5, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, 0.0, -0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.destroy();
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer102.destroy()
    device70.destroy();
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    
    device60.destroy();
    buffer105.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const array3 = new Float32Array([-0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, -0.5, -0.5, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.25, -0.5, -0.75, 0.25, 0.0, -0.5, 1.0, -0.5, -0.25, -0.25, 1.0, 0.25, -0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.0, 1.0, -0.25, 1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.5, 0.0, -0.5, -0.75, 0.75, 0.25, -0.5, 1.0, 0.0, -0.5, 0.0, -1.0, 0.0, 0.5, 0.5, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.75, 0.25, -0.5, 0.0, -0.75, 0.25, 0.0, -0.5, -0.75, 0.0, 1.0, 0.25, 0.0, 0.25, -1.0, -0.25, -1.0, 0.0, -0.75, 0.25, 0.25, -0.25, 0.25, 1.0, -1.0, ]);
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.25, -0.5, 1.0, -0.5, 0.25, -1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 0.0, -0.75, -1.0, -0.25, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, 1.0, 0.75, 0.75, 1.0, 0.75, -0.5, 0.75, 0.25, 0.75, 1.0, 0.75, -0.75, 0.25, 0.5, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.5, 0.0, 0.0, -0.25, 0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -0.5, -0.5, -0.5, -0.75, -0.25, 0.75, -0.5, 0.75, -0.25, -0.25, -0.25, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    command_encoder101.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    buffer201.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer103.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    compute_pass_encoder1000.popDebugGroup()
    
    buffer200.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    buffer106.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder201.popDebugGroup()
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    command_encoder101.popDebugGroup()
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer202.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    command_encoder203.insertDebugMarker("mymarker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder800.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder800.popDebugGroup()
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    {
        await buffer108.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer108.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer108.unmap();
        console.log(new Float32Array(data));
    }
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer108.destroy()
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer1010.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    
    
    
    buffer107.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    compute_pass_encoder8000.insertDebugMarker("marker")
    
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
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    compute_pass_encoder2020.popDebugGroup()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    compute_pass_encoder1000.popDebugGroup()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    
    
    
    
    buffer800.destroy()
    
    buffer109.destroy()
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    device110.destroy();
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    buffer203.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2010.popDebugGroup()
    
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    const sampler805 = device80.createSampler( { label: "sampler805" } );
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2050.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1200]
    });
    command_encoder1200.pushDebugGroup("mygroupmarker")
    const sampler806 = device80.createSampler( { label: "sampler806" } );
    command_encoder103.insertDebugMarker("mymarker");
    buffer1011.destroy()
    
    
    compute_pass_encoder2050.popDebugGroup()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2020.popDebugGroup()
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    command_encoder1200.insertDebugMarker("mymarker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
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
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler807 = device80.createSampler( { label: "sampler807" } );
    const command_encoder1202 = device120.createCommandEncoder({ label: "command_encoder1202" });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout202]
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer1014.destroy()
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    command_encoder1200.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
}