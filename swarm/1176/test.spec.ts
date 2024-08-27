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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("internal");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array0 = new Float32Array([-0.75, 0.75, 0.25, 0.25, 0.0, 0.0, -1.0, -0.25, 0.75, 0.0, 0.75, -0.5, -1.0, 0.75, -0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 1.0, -0.25, -0.25, -0.25, -0.75, -0.5, -0.75, -0.5, -0.25, 1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -1.0, -1.0, -1.0, 1.0, -0.75, 1.0, -0.5, 0.0, 0.0, -1.0, -0.5, 0.0, 0.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 0.5, 0.75, 0.5, 0.25, -0.5, 1.0, -0.75, 1.0, 0.5, 0.0, -1.0, 0.75, 0.25, 0.0, -0.5, -0.25, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -0.5, -1.0, 0.75, -1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.25, -1.0, 0.5, 0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 0.75, -0.75, 0.25, 1.0, -0.25, -1.0, -0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.25, 0.0, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.25, 0.25, -0.5, 0.75, -0.5, 0.0, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, -1.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.5, ]);
    
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.5, 0.0, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, -0.5, -0.5, 0.0, -0.25, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.5, -0.5, -1.0, -0.75, 0.75, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, 0.5, 0.5, -0.75, 0.75, 0.5, 0.0, 0.75, 0.75, 0.25, 0.5, 0.25, 0.5, -0.25, -0.75, 0.75, 0.75, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, 0.25, -0.75, -1.0, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.0, 0.25, -1.0, 0.75, -0.5, -0.5, -0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.75, 0.5, -0.75, 0.0, -1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_buffer001 = command_encoder001.finish();
    command_encoder100.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer100 = command_encoder100.finish();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder002.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
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
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_buffer102 = command_encoder102.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    texture000.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.pushErrorScope("validation");
    device30.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.destroy();
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer100.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder105.clearBuffer(buffer101);
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture100
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
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder105.copyTextureToBuffer(
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
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    command_encoder103.clearBuffer(buffer101);
    device00.queue.submit([command_buffer001, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture100.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder105.copyTextureToBuffer(
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
    device00.pushErrorScope("validation");
    
    buffer000.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.pushErrorScope("internal");
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer104 = command_encoder104.finish();
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder105.clearBuffer(buffer101);
    device00.queue.submit([]);
    const command_buffer106 = command_encoder106.finish();
    
    
    texture401.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    texture400.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    texture401.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder105.copyTextureToTexture(
        {
            texture: texture101
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder105.copyTextureToBuffer(
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
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const command_buffer105 = command_encoder105.finish();
    device40.queue.submit([]);
    device10.pushErrorScope("internal");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const array3 = new Float32Array([-1.0, 0.75, 0.25, 0.25, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 1.0, 0.25, -0.75, 0.0, 1.0, -1.0, -0.75, 1.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, 0.25, 0.5, -0.75, -0.25, 0.75, 0.25, -0.75, -0.5, 1.0, 0.75, 0.75, -0.75, -0.25, 0.75, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.75, -1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 0.0, -1.0, 0.5, -1.0, -1.0, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, -1.0, 1.0, 0.0, 0.25, 0.75, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    buffer101.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_buffer003 = command_encoder003.finish();
    
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("internal");
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
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder4020.insertDebugMarker("marker")
    
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
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder4011.pushDebugGroup("group_marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer400.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer103.destroy()
    command_encoder103.clearBuffer(buffer100);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture403.destroy();
    device40.pushErrorScope("out-of-memory");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer104.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.queue.submit([command_buffer104, ]);
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("out-of-memory");
    buffer100.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    texture402.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer102,
        0,
        400
    );
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    buffer102.destroy()
    command_encoder403.clearBuffer(buffer401);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    command_encoder403.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_buffer000 = command_encoder000.finish();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer106.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer401.destroy()
    
    const array4 = new Float32Array([-0.5, 1.0, 0.25, 0.5, 0.75, -0.25, 0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 0.5, -0.75, 0.5, -0.75, 0.25, -0.75, 0.5, 0.25, -0.5, -0.75, -0.75, -0.25, -0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, -1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 0.5, -0.5, 0.25, 0.75, 0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 1.0, -1.0, -0.75, 0.25, -1.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, -0.75, 1.0, 0.25, -0.25, 0.0, -0.75, 0.75, 0.5, -0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.75, -0.75, 1.0, 1.0, -0.25, -1.0, ]);
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
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
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    const command_buffer103 = command_encoder103.finish();
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder4030.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture404.destroy();
    
    device60.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder400.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    buffer104.destroy()
    
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    texture101.destroy();
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder107.copyTextureToTexture(
        {
            texture: texture103
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    texture104.destroy();
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture102.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    texture405.destroy();
    command_encoder005.clearBuffer(buffer001);
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array5 = new Float32Array([0.25, 0.25, -0.5, 1.0, 1.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 0.5, -0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, 0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.25, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.0, -0.25, -0.25, -0.25, -1.0, -1.0, 0.0, 0.25, 1.0, -0.25, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -0.5, 1.0, 0.25, 0.75, 0.75, 0.25, 0.25, -0.75, 1.0, -1.0, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, ]);
    
    buffer002.destroy()
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    device00.pushErrorScope("internal");
    texture002.destroy();
    command_encoder107.clearBuffer(buffer105);
    
    texture103.destroy();
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    texture100.destroy();
    buffer100.destroy()
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture106 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder101.clearBuffer(buffer105);
    
    
    device00.pushErrorScope("internal");
    texture104.destroy();
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture406.destroy();
    command_encoder005.insertDebugMarker("mymarker");
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    texture107.destroy();
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const command_buffer403 = command_encoder403.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device10.queue.writeTexture({ texture: texture106 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder1070.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture108 = device10.createTexture({
        label: "texture108",
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
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    buffer102.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer106
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    command_encoder404.copyTextureToTexture(
        {
            texture: texture402
        },
        {
            texture: texture406
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4000.insertDebugMarker("marker")
    texture104.destroy();
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    texture401.destroy();
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer106
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder108.clearBuffer(buffer107);
    command_encoder108.insertDebugMarker("mymarker");
    device40.queue.submit([]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder108.clearBuffer(buffer107);
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer105
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer105,
        0,
        400
    );
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
    texture102.destroy();
    command_encoder108.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array6 = new Float32Array([1.0, -0.5, -1.0, -1.0, 0.5, -1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.75, 0.25, 0.75, 0.0, -0.75, -0.75, 1.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 0.75, 0.75, -0.5, 0.5, -0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -0.75, 0.25, 0.25, 0.75, -1.0, -0.5, -0.5, 0.75, -0.5, 1.0, 0.75, -0.25, 0.0, 0.25, -0.5, -0.25, -0.25, 0.25, -1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -0.5, -1.0, -0.75, 0.0, 0.5, 1.0, -0.25, -0.5, -1.0, 1.0, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, -0.5, 0.0, 1.0, 1.0, -0.75, 1.0, 1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 0.0, -1.0, -0.5, -0.75, 1.0, ]);
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("validation");
    
    command_encoder108.copyTextureToBuffer(
        {
            texture: texture106
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture103.destroy();
    command_encoder108.copyBufferToBuffer(
        buffer106,
        0,
        buffer105,
        0,
        400
    );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    texture108.destroy();
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    const command_buffer108 = command_encoder108.finish();
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    
    
    
    command_encoder405.copyTextureToTexture(
        {
            texture: texture407
        },
        {
            texture: texture404
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    const array7 = new Float32Array([1.0, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, -0.5, 0.25, 0.75, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, 0.5, -0.5, 0.0, 0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 1.0, 0.75, 1.0, 0.0, 0.0, 1.0, 0.75, 0.0, -0.25, -0.5, -0.75, 0.0, -0.75, -1.0, 0.25, 0.75, 0.5, 1.0, -0.5, 0.5, 1.0, -0.5, 0.0, -1.0, 1.0, -0.75, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, -1.0, 1.0, 1.0, -1.0, -0.25, -1.0, 0.25, -1.0, 0.25, 0.5, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.25, 0.0, 1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer405 = command_encoder405.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder4030.insertDebugMarker("marker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder005.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    device40.queue.submit([command_buffer403, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer404 = command_encoder404.finish();
    const command_buffer201 = command_encoder201.finish();
    const command_buffer406 = command_encoder406.finish();
    device10.queue.submit([command_buffer100, command_buffer105, command_buffer106, command_buffer108, ]);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer101 = command_encoder101.finish();
    device40.queue.submit([command_buffer404, command_buffer405, command_buffer406, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer005 = command_encoder005.finish();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device40.queue.submit([command_buffer404, ]);
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
}