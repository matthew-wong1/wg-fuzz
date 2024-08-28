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
    const array0 = new Float32Array([-0.25, 0.5, -0.75, 0.5, 0.5, 0.0, -0.75, -0.75, -0.75, 1.0, 0.0, -0.25, -0.25, 0.5, 0.0, 0.5, 1.0, -0.25, -1.0, 0.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, 0.75, -0.75, 0.25, 0.0, 0.75, 1.0, 0.5, 0.5, -0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 1.0, -0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, 0.75, 1.0, -0.75, 0.75, -1.0, 1.0, 0.0, 1.0, 1.0, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 0.0, -0.75, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-0.5, -0.75, 0.0, 0.0, 0.75, 0.0, 0.25, 1.0, -0.25, -0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 0.75, -0.75, -0.5, 1.0, -0.75, -0.75, -0.75, 0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 0.5, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, 0.75, -0.25, -0.25, -1.0, -0.5, -0.75, 0.5, 0.25, -0.5, 0.25, 0.75, 0.0, 0.75, 0.0, 0.25, 0.25, 0.75, -1.0, -0.25, -1.0, 0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.0, -1.0, -1.0, -0.5, -0.25, 0.25, 0.0, 0.25, 0.0, -1.0, -0.25, 0.25, -0.75, -0.5, 0.5, -0.75, 0.5, 0.5, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, 0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    device00.pushErrorScope("internal");
    buffer101.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query000.destroy()
    device10.pushErrorScope("out-of-memory");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder100.popDebugGroup()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    buffer001.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    
    
    const command_buffer000 = command_encoder000.finish();
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const array2 = new Float32Array([1.0, 1.0, 0.5, -0.75, -0.5, 0.75, -0.25, -0.25, -0.75, 0.25, 0.75, -0.75, 0.25, -1.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.0, 0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 1.0, -0.75, -0.5, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, 0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.25, -0.5, -0.25, -0.5, 0.0, 0.25, 0.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.75, 0.0, -0.5, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, -0.5, -0.75, -0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    command_encoder100.insertDebugMarker("mymarker");
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.insertDebugMarker("mymarker");
    buffer100.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array3 = new Float32Array([0.75, 0.75, 0.75, 1.0, 0.75, 0.0, 0.75, -0.75, -1.0, -0.5, 0.5, 0.25, -1.0, -0.75, 0.75, 0.5, 0.0, -0.5, -0.5, 0.0, -1.0, 0.25, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.25, -0.75, 0.0, -1.0, 0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -1.0, 0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.75, -0.25, -1.0, 0.75, -0.25, 1.0, -0.75, 1.0, -0.75, 0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, 1.0, 0.0, -1.0, 0.75, -0.75, -0.5, -0.5, -1.0, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 0.25, 0.0, -0.75, 0.25, -0.75, 1.0, ]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.insertDebugMarker("mymarker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer000.destroy()
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query101.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
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
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer100 = command_encoder100.finish();
    query000.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device00.queue.submit([command_buffer000, ]);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query000.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder101.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer101 = command_encoder101.finish();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder102.insertDebugMarker("mymarker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_buffer102 = command_encoder102.finish();
    query300.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    device30.pushErrorScope("internal");
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    
    
    
    query001.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    texture200.destroy();
    query200.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder300.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    buffer103.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    query000.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    query001.destroy()
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.75, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.75, -0.75, 0.25, -0.75, 0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -0.5, 1.0, -1.0, -0.75, -0.25, 0.0, -1.0, -0.5, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, 0.0, -0.5, -0.25, 0.0, 0.25, -1.0, -0.75, 1.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 0.5, 1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.75, -0.5, -0.5, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.75, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, -0.25, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    device50.pushErrorScope("validation");
    query100.destroy()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1030.popDebugGroup()
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer300.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    query300.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer102.destroy()
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    texture101.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array5 = new Float32Array([0.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.75, -1.0, 0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 1.0, -0.75, -0.5, -0.25, 0.25, -0.5, 0.5, -0.5, 0.75, 0.0, -1.0, 0.25, 1.0, 0.5, 0.25, -0.25, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.75, 0.5, 0.5, -0.5, -1.0, -0.75, -0.5, -0.75, -0.5, 0.0, -1.0, 0.0, -0.5, 0.75, -0.5, -0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 0.0, 1.0, -0.25, 0.0, -0.5, 0.5, 0.0, 1.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 0.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -0.5, -0.25, ]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    query500.destroy()
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder400.popDebugGroup()
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder400.insertDebugMarker("mymarker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture300.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query200.destroy()
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    compute_pass_encoder2000.popDebugGroup()
    query000.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    texture401.destroy();
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture500.destroy();
    query400.destroy()
    
    texture102.destroy();
    query301.destroy()
    
    
    
    command_encoder401.clearBuffer(buffer400);
    
    
    const command_buffer400 = command_encoder400.finish();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder300.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    query403.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer400.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const command_buffer300 = command_encoder300.finish();
    query200.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    
    
    
    
    query002.destroy()
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device00.pushErrorScope("out-of-memory");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder0010.popDebugGroup()
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder201.insertDebugMarker("mymarker");
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer401 = command_encoder401.finish();
    
    
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder1030.popDebugGroup()
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    texture400.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    query300.destroy()
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query403.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder202.clearBuffer(buffer201);
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_buffer202 = command_encoder202.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer002, ]);
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const command_buffer402 = command_encoder402.finish();
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
}