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
    const array0 = new Float32Array([-0.5, 1.0, 0.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, 0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.5, 1.0, -0.25, -0.75, 1.0, -1.0, 0.0, 1.0, 0.75, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, 0.75, -1.0, 1.0, -0.25, 0.5, 0.75, 0.0, 1.0, -0.5, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, 1.0, 0.25, 0.5, -0.25, 1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.5, 0.5, 1.0, -0.25, -0.5, 0.75, -0.75, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.75, 0.5, 1.0, 0.25, -0.25, -0.75, -1.0, 0.75, 0.75, ]);
    const array1 = new Float32Array([0.25, -0.75, 0.0, -0.5, -0.75, 0.5, 0.75, -1.0, -0.5, 0.0, 0.75, 0.75, -0.75, -0.75, 0.75, 0.25, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, 0.5, 0.5, -0.75, -0.75, -0.75, -0.5, 0.0, -0.25, -0.75, 0.0, 0.75, 0.25, 0.0, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, -1.0, -0.75, 0.0, -1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.5, 0.25, 1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 0.75, 0.5, -0.5, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 0.75, 0.0, 0.0, 1.0, 0.75, 0.0, -0.5, 0.0, 0.0, 0.75, 0.5, -0.5, -0.5, -0.75, -0.5, 0.5, 0.25, 0.5, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
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
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const array2 = new Float32Array([0.25, -0.25, -0.25, -1.0, 0.75, 0.25, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 1.0, -0.75, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, 0.5, -0.75, 0.5, 0.25, -0.5, 0.75, 0.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.5, 0.0, 0.25, -0.75, 0.5, -1.0, 1.0, 0.0, -1.0, -1.0, -0.75, -0.25, 1.0, -0.25, 0.75, -0.25, -1.0, 0.5, -0.5, -0.5, -1.0, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, -0.75, 0.5, 0.25, 0.75, -0.75, 0.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.25, 0.75, 1.0, -1.0, -0.5, -0.5, -0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.75, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device00.pushErrorScope("out-of-memory");
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
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
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_buffer100 = command_encoder100.finish();
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
    device00.pushErrorScope("internal");
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout004]
    });
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device00.pushErrorScope("validation");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array3 = new Float32Array([0.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.25, 1.0, 0.75, 0.0, 0.75, 0.25, -1.0, -1.0, -1.0, -0.5, -0.25, 0.5, 0.25, -1.0, -1.0, 0.0, -0.25, -0.75, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.25, -1.0, -1.0, 0.25, 1.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, -0.75, 1.0, 0.75, 0.0, 0.5, -0.25, -0.75, 0.0, -1.0, -0.75, -0.5, -0.5, -0.5, -0.25, 0.75, 1.0, -1.0, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 0.25, -0.25, 1.0, -0.25, 0.75, 0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -1.0, -0.5, -0.25, 0.75, -0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -0.25, 0.0, -0.25, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array4 = new Float32Array([-0.25, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.0, 0.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.5, 0.25, 0.0, 0.5, -0.25, 0.5, -0.25, -0.5, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.75, 1.0, -0.75, 0.5, -0.5, -0.5, -0.75, 0.0, -0.25, 0.5, 0.25, 0.5, -0.75, 0.25, 0.75, -0.75, 0.0, 1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 1.0, -0.75, 1.0, 0.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, 0.75, -0.25, -0.5, 1.0, -1.0, -1.0, -0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.0, 1.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, -0.5, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.insertDebugMarker("mymarker");
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const array5 = new Float32Array([0.25, -0.5, -0.25, 0.75, 1.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.75, 0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.0, 0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, -0.25, -0.5, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 0.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.25, -0.25, 0.5, -0.75, 0.5, 0.25, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.0, 0.25, 0.25, -0.5, 0.5, -0.25, 0.75, 1.0, 0.25, -0.5, -0.25, 0.0, 1.0, 0.5, -0.75, 0.0, 0.75, 0.75, -0.25, 0.75, 1.0, 0.5, -0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, 0.75, -0.5, 0.25, -0.5, 0.25, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -0.25, 0.25, 0.25, 1.0, 0.0, ]);
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder001.insertDebugMarker("mymarker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder001.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_buffer201 = command_encoder201.finish();
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    command_encoder204.insertDebugMarker("mymarker");
    
    
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_buffer203 = command_encoder203.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device10.pushErrorScope("validation");
    
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
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout005]
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
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder204.insertDebugMarker("mymarker");
    
    
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const command_buffer204 = command_encoder204.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device40.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const command_buffer202 = command_encoder202.finish();
    const command_buffer003 = command_encoder003.finish();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder200.insertDebugMarker("mymarker");
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout005]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
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
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
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
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer101 = command_encoder101.finish();
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    command_encoder102.insertDebugMarker("mymarker");
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    
    
    
    
    
    
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
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout006]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.pushErrorScope("validation");
    
    
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_buffer002 = command_encoder002.finish();
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
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
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
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
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout008]
    });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder400.insertDebugMarker("mymarker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    
    
    
    const array6 = new Float32Array([1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.25, -1.0, -0.75, -1.0, -0.25, -1.0, -0.5, -0.75, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.25, -0.5, 0.5, -0.25, 0.0, -0.25, -0.75, -1.0, -1.0, -0.25, -0.5, -0.75, 0.5, 0.5, -1.0, 1.0, 0.75, -1.0, 0.5, -0.75, 0.0, 0.0, 0.75, -0.75, 0.25, -0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.75, -1.0, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -0.5, -1.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 1.0, ]);
    const command_buffer200 = command_encoder200.finish();
    
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout007]
    });
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout008]
    });
    command_encoder102.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    
    
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout005]
    });
    command_encoder205.insertDebugMarker("mymarker");
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout008]
    });
    const command_buffer103 = command_encoder103.finish();
    
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    
    
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout009]
    });
    const command_buffer102 = command_encoder102.finish();
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer206 = command_encoder206.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer205 = command_encoder205.finish();
    const command_buffer400 = command_encoder400.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}