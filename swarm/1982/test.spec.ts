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
    
    const array0 = new Float32Array([-0.25, -0.25, 1.0, -0.25, 0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 0.5, 0.75, -0.75, -0.25, 1.0, 0.5, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 0.5, -0.5, -0.5, 1.0, -0.75, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.75, -0.5, 0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.75, -0.75, -0.75, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, 0.0, -1.0, 0.0, 0.0, 0.25, -0.5, -1.0, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
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
    const array1 = new Float32Array([-1.0, -0.75, 1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 0.75, -1.0, -0.25, -0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -1.0, -0.75, 1.0, 1.0, -0.5, 0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, 0.75, 1.0, 0.25, -1.0, 0.5, 0.75, 0.5, -0.25, 0.5, -0.75, -0.75, 1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 0.5, 0.75, -0.75, 0.75, -0.5, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 1.0, 0.0, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    query000.destroy()
    query000.destroy()
    
    
    query001.destroy()
    const command_buffer000 = command_encoder000.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const array2 = new Float32Array([-1.0, 1.0, 0.25, 0.5, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.75, 1.0, -0.5, 0.75, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 0.0, 1.0, -0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.0, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -1.0, 0.0, 0.5, 1.0, 0.75, -1.0, -0.5, -0.25, 0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -1.0, -1.0, 0.75, -0.5, 1.0, -0.25, -0.25, 0.0, -1.0, 0.25, -0.25, 0.0, -0.75, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    
    
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
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer001 = command_encoder001.finish();
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    query001.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    texture001.destroy();
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer002 = command_encoder002.finish();
    
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query002.destroy()
    query003.destroy()
    
    query000.destroy()
    query002.destroy()
    query003.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query003.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer000.destroy()
    
    buffer102.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    texture002.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    query002.destroy()
    
    query003.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer100.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture001.destroy();
    
    const array3 = new Float32Array([-1.0, 0.5, 1.0, -0.75, 0.75, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, -0.25, -0.5, 0.75, 0.75, 0.25, -0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, 0.0, 0.5, -0.25, 0.25, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, 1.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.25, -0.5, 1.0, -0.75, -0.75, 0.75, 0.75, -0.5, 0.0, 1.0, -1.0, -0.25, 0.5, 0.75, -0.25, 0.75, 0.5, 0.0, -0.25, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 0.0, -0.25, -0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.0, -0.75, -0.25, 0.25, 0.5, -0.25, 0.25, -0.25, 0.75, 0.5, 1.0, -1.0, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, 0.5, -1.0, -1.0, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    texture200.destroy();
    buffer101.destroy()
    query201.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    query002.destroy()
    query000.destroy()
    query001.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture102.destroy();
    buffer300.destroy()
    const array4 = new Float32Array([-0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.5, 1.0, -0.5, 1.0, 0.75, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, -1.0, -1.0, -0.5, -0.25, -1.0, -0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 0.5, -1.0, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -0.5, 0.25, 0.25, 0.75, -1.0, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, -1.0, -1.0, -0.5, 0.25, 0.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, -0.5, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, ]);
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer102 = command_encoder102.finish();
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    buffer000.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query201.destroy()
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
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query000.destroy()
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    query002.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array5 = new Float32Array([-0.5, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 1.0, -0.25, -1.0, -0.5, 0.25, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.75, 0.5, -0.5, -0.5, 1.0, -0.25, 1.0, -0.75, 1.0, -1.0, -0.75, -0.75, -1.0, 0.0, 1.0, -0.75, 0.75, -1.0, -1.0, -0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 0.25, 0.75, -0.5, 0.0, 0.0, -0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 0.75, 0.0, -0.75, -0.75, -0.75, 0.25, 1.0, 1.0, 1.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 1.0, 0.75, -0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 1.0, -0.5, ]);
    const command_buffer200 = command_encoder200.finish();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query000.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    buffer100.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer202 = command_encoder202.finish();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const array6 = new Float32Array([-0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.5, 0.5, 1.0, -0.75, -0.75, 0.25, -0.75, 0.75, 0.75, -1.0, 0.75, 0.0, 0.0, -0.75, -0.25, 0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 0.0, 0.0, -1.0, 0.25, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 0.75, 0.0, 0.75, -1.0, -1.0, -0.5, 0.25, 0.5, -0.25, 0.75, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 1.0, -0.5, -0.75, 0.25, -0.25, 0.75, 0.5, 1.0, 1.0, 0.75, 1.0, -0.75, 0.25, -1.0, -1.0, -0.75, -1.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 0.25, -0.25, ]);
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture302.destroy();
    
    
    const command_buffer201 = command_encoder201.finish();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_buffer302 = command_encoder302.finish();
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    texture003.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    buffer103.destroy()
    query201.destroy()
    texture103.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    command_encoder303.insertDebugMarker("mymarker");
    query300.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    
    query201.destroy()
    
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    query003.destroy()
    
    
    
    query003.destroy()
    const command_buffer103 = command_encoder103.finish();
    const command_buffer203 = command_encoder203.finish();
    
    
    buffer001.destroy()
    query200.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
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
    command_encoder104.insertDebugMarker("mymarker");
    query202.destroy()
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    buffer300.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder303.copyTextureToTexture(
        {
            texture: texture303
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
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
    
    
    texture301.destroy();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query100.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    buffer002.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    buffer003.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query002.destroy()
    query000.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    query000.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    query302.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    texture002.destroy();
    texture201.destroy();
    buffer300.destroy()
    query200.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    command_encoder105.insertDebugMarker("mymarker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    
    
    
    query100.destroy()
    command_encoder303.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder2040.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    query003.destroy()
    command_encoder105.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query200.destroy()
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const array7 = new Float32Array([0.0, 0.0, 1.0, -0.75, 0.5, 0.5, 0.75, 0.25, 1.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, -0.5, -0.5, 0.25, -0.25, -0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, 0.75, -0.5, 0.75, 0.0, -0.75, -0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 0.0, 0.0, 1.0, 1.0, -0.25, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.0, 1.0, -0.75, -0.5, -0.5, 0.5, 0.25, 0.5, 0.0, 0.75, -0.75, 0.0, 1.0, -0.75, 0.25, -1.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.5, 0.5, -0.5, -0.25, -1.0, -0.5, -0.25, ]);
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer200.destroy()
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer301.destroy()
    
    
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder106.insertDebugMarker("mymarker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture307 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder107.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1010.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    texture101.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    texture202.destroy();
    texture306.destroy();
    texture303.destroy();
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture307 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer105 = command_encoder105.finish();
    const array8 = new Float32Array([1.0, -0.25, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.5, 0.25, -0.5, -0.5, 0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.5, -0.5, 0.0, 1.0, -0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.25, 1.0, 0.5, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.75, 0.5, 0.5, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 0.0, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 1.0, -1.0, -1.0, 0.75, -0.5, -0.75, ]);
    device30.queue.writeTexture({ texture: texture305 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    command_encoder305.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture307
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeTexture({ texture: texture305 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder107.insertDebugMarker("mymarker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    
    const command_buffer305 = command_encoder305.finish();
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    texture307.destroy();
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    query304.destroy()
    
    buffer302.destroy()
    query303.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder107.insertDebugMarker("mymarker");
    
    
    
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
    
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    query302.destroy()
    const command_buffer106 = command_encoder106.finish();
    const command_buffer107 = command_encoder107.finish();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer301 = command_encoder301.finish();
    const command_buffer205 = command_encoder205.finish();
}