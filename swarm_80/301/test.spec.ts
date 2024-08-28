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
    const array0 = new Float32Array([0.25, 0.5, 0.0, -0.25, 0.5, 0.0, -0.25, 0.25, 0.5, 0.25, -1.0, 1.0, -0.5, -0.75, -0.75, 0.5, -1.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 0.25, -0.5, -0.25, 0.5, 0.75, 0.25, -0.25, -1.0, 0.0, 0.75, -1.0, -1.0, -0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, 0.0, 1.0, -1.0, -0.75, -0.25, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, -1.0, 1.0, -0.75, 0.0, 1.0, -0.25, 0.5, -0.5, 0.0, 0.25, -0.75, 0.25, 0.0, -0.5, -0.25, -0.5, 0.75, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 0.0, 0.75, 0.75, -0.75, -1.0, -1.0, -0.75, -0.25, 0.0, -1.0, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 0.5, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -0.5, -0.75, -0.75, -0.25, 0.75, -0.25, -0.75, -0.25, -0.5, 0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -0.75, -1.0, 1.0, 0.5, 0.25, 0.0, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, -0.5, -0.25, -0.5, 1.0, 0.5, 0.25, 0.25, 0.5, -0.75, -0.5, -0.25, -1.0, -1.0, 1.0, -0.5, -1.0, -0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, -1.0, -0.5, -0.25, 1.0, 0.5, 0.25, -0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([-0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.0, 1.0, -0.75, 0.75, 0.5, 0.0, 0.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -0.25, 0.25, 0.5, -0.5, 0.25, -0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.75, -1.0, -0.5, -0.75, -1.0, 0.25, -0.75, 0.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.25, -0.25, 1.0, -0.25, 0.25, -0.5, -0.5, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 1.0, -1.0, -0.5, -0.75, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 0.25, 0.5, -0.25, 0.5, 0.25, 0.25, 0.75, -0.75, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, -0.75, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    
    query300.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("internal");
    query300.destroy()
    buffer300.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
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
    
    texture100.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture300.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    device10.queue.submit([command_buffer101, ]);
    
    command_encoder102.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device40.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    texture302.destroy();
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device30.pushErrorScope("internal");
    const command_buffer103 = command_encoder103.finish();
    
    const array3 = new Float32Array([-1.0, 0.5, -0.25, 0.75, -0.75, -1.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.0, -1.0, -0.5, 0.0, -0.75, 0.0, 0.75, 0.0, 0.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.0, 0.25, -0.75, -0.25, -1.0, 1.0, 0.75, 0.0, 0.75, -1.0, -0.25, 0.25, -1.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 1.0, -0.75, -0.25, 0.25, 0.0, -1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, -0.75, -0.5, -1.0, -0.5, -0.5, -0.5, -0.75, 0.75, 1.0, -0.75, -0.75, -0.5, 0.25, -0.75, -0.5, -1.0, -0.25, -0.25, 0.5, -1.0, 0.0, -0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.25, 1.0, 0.75, 0.25, -0.75, 0.25, -0.5, -1.0, 0.5, 0.25, ]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    device10.queue.submit([command_buffer103, ]);
    query200.destroy()
    texture101.destroy();
    query200.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query301.destroy()
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
    buffer301.destroy()
    
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
    device30.pushErrorScope("internal");
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
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    query200.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    query100.destroy()
    
    
    
    
    const array4 = new Float32Array([1.0, -1.0, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.25, -0.75, 1.0, 1.0, 1.0, -1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.75, 0.0, 0.5, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, 0.0, -0.5, -0.25, 1.0, -1.0, -0.25, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, -0.25, -1.0, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.0, 0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.25, -0.25, 0.75, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, -0.75, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 1.0, 1.0, -0.5, 0.5, 0.75, 0.0, 0.5, 0.75, 0.0, -1.0, 0.5, 1.0, 0.5, 0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query301.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query300.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    texture303.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    texture301.destroy();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const array5 = new Float32Array([1.0, 0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.5, -0.5, 0.5, 1.0, 0.5, -0.5, 0.0, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, -1.0, 0.5, -1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 1.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 1.0, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, -1.0, 0.0, 0.25, 0.0, -0.5, 0.5, 0.5, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -0.25, 0.0, -0.5, -0.25, -1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, 1.0, 1.0, 1.0, 0.25, -1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.75, 0.0, -0.5, 0.75, ]);
    device30.destroy();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const array6 = new Float32Array([-0.25, -0.5, 0.0, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.5, 1.0, 0.0, 0.75, -0.75, -0.25, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, 0.75, -0.5, 0.0, -1.0, 0.5, -0.25, 1.0, -1.0, -1.0, -1.0, 0.5, 0.5, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, 0.0, -0.25, -0.25, -0.5, 0.0, -0.25, 0.5, 0.75, 0.25, 0.75, 0.5, -0.75, 0.75, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, -0.75, 0.5, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.0, 0.75, -0.75, -0.25, -0.75, 1.0, 0.5, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, -0.25, 1.0, -0.25, 0.5, -0.75, 0.0, -0.25, ]);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder105.clearBuffer(buffer101);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.clearBuffer(buffer101);
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1040.insertDebugMarker("marker")
    query200.destroy()
    command_encoder105.clearBuffer(buffer101);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer101.destroy()
    device60.destroy();
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    command_encoder105.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device70.destroy();
    
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    texture200.destroy();
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    
    
    
    
    query102.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    query204.destroy()
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    query201.destroy()
    texture102.destroy();
    query200.destroy()
    
    query102.destroy()
    
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    query102.destroy()
    query100.destroy()
    
    
    
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile(__dirname + '/shader_module1015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    texture103.destroy();
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    query200.destroy()
    query102.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    query100.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query103.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query101.destroy()
    
    command_encoder106.insertDebugMarker("mymarker");
    query101.destroy()
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module1017_code = "";
    try {
        shader_module1017_code = await fs.readFile(__dirname + '/shader_module1017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1017 = await device10.createShaderModule({ label: "shader_module1017", code: shader_module1017_code })
    
    
    const command_buffer106 = command_encoder106.finish();
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    query202.destroy()
    
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    
    
    
    
    query204.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder200.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    query101.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder1040.popDebugGroup()
    query200.destroy()
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const command_buffer200 = command_encoder200.finish();
    query203.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    texture201.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    texture500.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    
    
    const array7 = new Float32Array([0.75, -0.75, -0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, 0.0, 0.75, 0.25, 0.25, -1.0, 0.25, -0.25, -0.5, 0.75, -0.5, -0.25, -1.0, 0.75, -0.75, 0.0, -0.75, 0.25, -1.0, -0.5, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 1.0, 0.75, 0.25, 1.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.0, -0.5, -1.0, -0.25, 0.25, -1.0, 0.25, 1.0, -1.0, -1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, -0.5, 0.0, 0.25, 0.75, -0.25, 0.5, 0.0, 1.0, -0.25, 0.75, 0.75, -0.5, -1.0, -1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 1.0, 1.0, 0.75, 0.5, 0.0, 0.0, ]);
    query202.destroy()
    
    
    
    
    
    device50.destroy();
    query103.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    const array8 = new Float32Array([0.75, 1.0, -0.25, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 0.0, -0.25, 1.0, 0.5, -0.5, 0.25, -0.5, -0.5, -0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 0.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.5, 0.0, 1.0, 0.25, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.25, 0.0, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, -0.25, -0.25, ]);
    query101.destroy()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder107.insertDebugMarker("mymarker");
    query106.destroy()
    query203.destroy()
    device10.pushErrorScope("out-of-memory");
    query103.destroy()
    
    
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
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    
    
    
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    compute_pass_encoder1040.popDebugGroup()
    
    query205.destroy()
    command_encoder107.clearBuffer(buffer102);
    query106.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    
    query104.destroy()
    
    query100.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder1020.popDebugGroup()
    command_encoder107.insertDebugMarker("mymarker");
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    device20.queue.submit([command_buffer200, ]);
    
    buffer102.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1018_code = "";
    try {
        shader_module1018_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1018 = await device10.createShaderModule({ label: "shader_module1018", code: shader_module1018_code })
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    query103.destroy()
    
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer202, ]);
    query101.destroy()
    
    
    compute_pass_encoder2010.popDebugGroup()
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    compute_pass_encoder1040.popDebugGroup()
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    query100.destroy()
    
    buffer104.destroy()
    
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    command_encoder107.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    const command_buffer107 = command_encoder107.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer106, ]);
}