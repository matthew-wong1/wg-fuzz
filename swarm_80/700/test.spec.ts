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
    
    
    const array0 = new Float32Array([-0.25, -0.25, -1.0, -1.0, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 0.75, -0.5, -0.75, 0.75, 1.0, 0.5, -0.75, -0.25, -0.5, 0.25, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, -0.25, -0.75, -1.0, -0.25, 0.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -1.0, 1.0, 0.25, 0.75, -0.5, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, 0.75, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.75, 0.5, -0.25, 0.25, 0.5, -1.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, -0.5, 0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    
    
    const array1 = new Float32Array([-0.25, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, -0.5, 0.5, 0.25, -0.75, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, -0.75, 0.5, 0.5, -0.25, 0.75, -0.75, 0.25, 0.75, -0.5, 0.0, -1.0, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.5, -0.25, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -0.5, -1.0, -1.0, -0.75, 0.25, -0.5, -0.75, 0.0, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -0.5, -0.25, -0.5, -1.0, -1.0, -0.5, -0.25, 0.0, 0.5, 0.0, -1.0, 0.75, 0.0, -0.25, 0.25, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder101.insertDebugMarker("mymarker");
    
    const array2 = new Float32Array([0.0, 1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, -1.0, -0.75, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, 1.0, -0.5, 1.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.0, -1.0, -1.0, 0.75, -0.75, 0.0, 0.75, 0.75, 0.5, 0.75, -1.0, 0.75, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, 1.0, -0.75, 0.75, 1.0, -0.25, 0.75, 0.75, -0.25, 0.0, -0.5, 0.75, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, 0.0, 0.5, 0.75, 1.0, 0.0, -0.25, 1.0, -0.25, -0.75, -0.25, 1.0, 1.0, 0.5, -0.25, -0.75, 0.25, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter2 = await gpu.requestAdapter({
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
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
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([0.0, -0.5, -1.0, -0.25, -0.25, 0.5, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, -0.5, -0.25, 0.75, 0.0, -0.25, -0.25, 0.75, -0.75, -0.5, -1.0, 0.25, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, -1.0, -0.75, 0.25, 0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 0.25, 0.75, 1.0, 1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.75, 0.75, -0.25, 0.75, 0.5, -0.25, -1.0, 0.25, 0.0, 0.5, 1.0, -0.25, 0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 1.0, 0.75, -0.5, -0.5, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, -1.0, -1.0, -1.0, -1.0, 0.5, 1.0, 0.0, 0.0, -0.25, 0.0, -0.75, ]);
    command_encoder102.popDebugGroup()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer100.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    texture100.destroy();
    
    
    texture000.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder100.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder101.popDebugGroup()
    device20.destroy();
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture101.destroy();
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
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    texture001.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const array4 = new Float32Array([-0.25, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, 1.0, -0.25, -0.5, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, 0.5, 1.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 0.0, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -0.25, 0.75, 0.25, 0.5, -0.75, 0.75, 1.0, 1.0, 0.75, -1.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 0.25, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.75, -0.25, -0.75, 0.0, 0.25, 1.0, 1.0, -0.75, -0.5, 0.25, 0.5, 0.0, 1.0, -0.25, -1.0, -0.25, -0.25, 0.0, 0.75, 0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 0.75, ]);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture002.destroy();
    command_encoder002.insertDebugMarker("mymarker");
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder104.popDebugGroup()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    buffer101.destroy()
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer001.destroy()
    
    
    device50.destroy();
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder002.insertDebugMarker("mymarker");
    
    
    
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder002.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device70.destroy();
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
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
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    texture102.destroy();
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer103.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder1040.insertDebugMarker("marker")
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
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder002.insertDebugMarker("mymarker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture600.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    
    
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder002.popDebugGroup()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture300.destroy();
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    command_encoder005.insertDebugMarker("mymarker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer102.destroy()
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    command_encoder600.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const array5 = new Float32Array([0.5, 0.25, 0.0, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 0.75, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, -0.5, 1.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -0.75, 1.0, 0.5, -1.0, 0.25, 1.0, -1.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, 0.75, 0.25, 0.25, 0.75, -1.0, 1.0, 1.0, 0.25, 1.0, 0.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.75, -0.25, 0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 0.75, 0.25, ]);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder005.insertDebugMarker("mymarker");
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    buffer002.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    texture103.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder300.insertDebugMarker("mymarker");
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder600.popDebugGroup()
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder602.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    
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
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    command_encoder105.clearBuffer(buffer104);
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder105.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    command_encoder105.pushDebugGroup("mygroupmarker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder604.pushDebugGroup("mygroupmarker")
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    command_encoder604.insertDebugMarker("mymarker");
    buffer105.destroy()
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
    
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    texture106.destroy();
    
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture105.destroy();
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder602.popDebugGroup()
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout005]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder105.clearBuffer(buffer104);
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    buffer302.destroy()
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.insertDebugMarker("mymarker");
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture107.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder604.popDebugGroup()
    command_encoder300.popDebugGroup()
    command_encoder602.popDebugGroup()
    command_encoder002.popDebugGroup()
    command_encoder105.popDebugGroup()
    command_encoder006.popDebugGroup()
}