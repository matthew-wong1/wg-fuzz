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
    const array0 = new Float32Array([0.5, 0.25, 1.0, -0.25, -1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.75, 0.75, -1.0, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, 0.0, -0.25, 0.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 1.0, 0.25, -1.0, -0.5, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, 0.25, 0.5, -0.5, 0.75, -1.0, 0.5, -1.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.5, -1.0, 0.75, 0.0, -1.0, 0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.0, 0.25, -0.25, 1.0, 0.75, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-1.0, -0.5, 0.25, -0.5, -0.5, -0.25, -1.0, 1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.0, 0.0, -0.75, 0.25, 1.0, -1.0, 0.75, 1.0, -1.0, -0.5, -0.25, 0.5, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, 0.25, -0.75, -0.75, -0.75, -0.5, -1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.75, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, -0.25, -0.75, 0.75, 0.25, -0.25, 0.25, -0.75, 0.5, 0.5, -1.0, -0.5, 0.75, -0.25, -0.25, -0.5, -1.0, 0.75, 1.0, ]);
    query200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("internal");
    buffer100.destroy()
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    buffer200.destroy()
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array2 = new Float32Array([0.0, -0.75, 0.75, -0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -0.5, 1.0, -0.25, -0.75, 0.5, -0.75, -0.5, 1.0, 0.75, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.0, 0.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.75, 0.75, -1.0, -1.0, 0.25, 0.75, 0.25, -0.75, 0.25, -1.0, 0.25, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.75, -0.25, -0.5, -0.25, -0.75, 0.75, 0.25, 0.25, 0.0, 0.5, -0.75, 0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.0, 0.0, 0.0, -1.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -0.75, 0.5, 1.0, 0.5, -0.75, 1.0, 1.0, -1.0, 0.25, 0.0, -1.0, 0.0, -0.5, -0.75, 0.0, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    query100.destroy()
    
    query100.destroy()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    buffer201.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query000.destroy()
    
    command_encoder201.insertDebugMarker("mymarker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder201.insertDebugMarker("mymarker");
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
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer000.destroy()
    const array3 = new Float32Array([0.5, -0.75, -0.5, -1.0, 1.0, -0.75, -1.0, -1.0, 0.5, -0.25, 0.0, 0.5, 0.0, -1.0, 1.0, -1.0, -0.75, -1.0, 0.25, 0.75, -0.5, -0.25, -0.5, 1.0, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -0.25, 0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, -0.25, -0.75, -0.75, 0.0, -0.5, -1.0, 0.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 0.5, -0.25, -0.75, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 0.75, 0.25, -0.5, 0.75, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, 0.0, 0.75, -0.75, -0.5, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, -1.0, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query200.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture000.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-1.0, -0.5, 0.75, -0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, -1.0, -1.0, 0.25, 0.0, -0.25, 0.25, -0.5, -1.0, 0.5, -0.5, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, -0.25, -0.5, -0.5, 0.25, -0.25, 0.25, 0.75, 0.75, -0.75, 0.75, 0.5, 0.5, 0.25, 0.25, 0.75, -0.5, 0.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.5, 0.25, -0.5, -0.25, 1.0, -0.25, -1.0, -0.5, 1.0, -0.75, 0.5, -0.25, 0.0, -1.0, 0.25, 0.0, -1.0, -1.0, -0.5, -1.0, -0.25, 0.75, -0.25, 0.25, -0.25, -0.75, -1.0, 0.25, 0.0, 0.5, -0.5, 0.75, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, 0.25, 1.0, 0.5, 1.0, -0.75, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    const array5 = new Float32Array([0.25, 0.25, -0.75, -0.25, 1.0, 0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.75, 0.5, 0.25, 0.0, -0.75, 1.0, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.0, -0.5, -0.5, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -0.25, 0.0, 0.75, 0.0, 0.25, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, 0.75, -0.5, -1.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, 0.25, 0.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.75, 1.0, -0.75, -0.75, 0.75, -0.5, 1.0, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.clearBuffer(buffer203);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
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
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device30.pushErrorScope("validation");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
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
        powerPreference: "high-performance"
    });
    query001.destroy()
    buffer203.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder300.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder202.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.pushErrorScope("out-of-memory");
    query200.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    query100.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder204.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array6 = new Float32Array([0.75, -0.25, 0.0, -0.75, 1.0, 1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.75, -0.25, 0.75, -1.0, -0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 1.0, -0.75, 0.5, -0.75, 0.75, -0.5, 0.5, 0.75, 0.0, 0.75, 1.0, -0.5, -0.75, -0.25, -0.75, 0.0, 0.5, 0.5, -1.0, -1.0, 0.0, 0.25, 1.0, -1.0, -0.25, 0.25, -0.5, -0.75, -0.75, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.0, 0.5, 0.5, -0.25, 0.25, -0.25, 0.0, -1.0, 0.75, -1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, -0.75, -0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.25, 0.25, 0.75, 0.5, -0.25, 1.0, 0.5, 1.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.25, ]);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    buffer202.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture005.destroy();
    
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder204.insertDebugMarker("mymarker");
    query000.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder202.popDebugGroup()
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture001.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query202.destroy()
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder301.insertDebugMarker("mymarker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder202.insertDebugMarker("mymarker");
    device30.pushErrorScope("validation");
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.pushErrorScope("out-of-memory");
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    query001.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
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
    const array7 = new Float32Array([-0.25, -1.0, 0.75, 0.5, -1.0, -0.75, 1.0, -0.25, -1.0, 0.75, -0.5, -0.5, -1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -0.5, -0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -0.5, 0.25, 0.75, -1.0, 0.5, 0.5, 0.25, 0.5, -0.75, -0.25, -1.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 0.25, -0.75, 0.75, -1.0, -0.75, -1.0, 0.75, 0.5, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, -1.0, -1.0, 0.5, -0.5, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, -0.25, 1.0, -1.0, -0.25, 1.0, -0.5, -0.5, 0.75, 0.75, -0.75, -0.25, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.0, -0.5, 0.25, 1.0, -0.25, -0.25, -0.5, -0.25, -0.25, ]);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query102.destroy()
    query101.destroy()
    compute_pass_encoder2040.insertDebugMarker("marker")
    query002.destroy()
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3040.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.insertDebugMarker("mymarker");
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    texture300.destroy();
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeTexture({ texture: texture004 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    query202.destroy()
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    render_pass_encoder3040.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    
    render_pass_encoder0010.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    texture100.destroy();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1010.executeBundles([])
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder205.insertDebugMarker("mymarker");
    query203.destroy()
    
    query002.destroy()
    query205.destroy()
    query201.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    query004.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    query004.destroy()
    texture500.destroy();
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.25, -1.0, 0.75, -0.25, 0.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.25, 1.0, -1.0, 0.25, 0.25, -1.0, 0.5, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 0.5, -0.25, 0.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, 0.75, 0.5, 0.0, 0.5, 1.0, -1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, -0.75, -0.25, 1.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.75, -0.5, 0.5, 0.25, 0.0, -0.25, 0.25, -0.75, 0.75, 0.25, 0.75, 0.0, 1.0, -0.25, -0.5, -0.5, ]);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3030.end();
    render_pass_encoder1000.popDebugGroup();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    compute_pass_encoder0000.end();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer008, 0);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer307, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.end();
    compute_pass_encoder0020.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3010.end();
    command_encoder002.popDebugGroup()
    command_encoder301.popDebugGroup()
    compute_pass_encoder3000.end();
}