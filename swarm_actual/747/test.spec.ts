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
    const array0 = new Float32Array([-0.25, 1.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.0, -0.25, 0.0, 0.5, 1.0, -0.5, 0.25, 0.75, 0.5, -0.5, -1.0, -0.25, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, -1.0, 0.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.0, 0.25, -0.25, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, 0.5, 0.75, 1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, -1.0, -0.5, -0.75, -0.5, -0.75, -1.0, 0.5, 0.0, 0.25, -0.5, -0.25, 0.5, -0.25, -0.5, -1.0, -0.5, 0.75, 1.0, -0.25, -1.0, -0.25, 0.0, -1.0, -1.0, -1.0, 0.0, 0.25, -0.75, -0.5, 0.75, -1.0, 0.75, -1.0, -0.5, -0.25, 1.0, -1.0, -0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 0.0, ]);
    const array1 = new Float32Array([-0.25, -0.25, -0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 1.0, -0.75, 1.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.0, -0.75, 0.25, 0.75, -0.25, -1.0, 0.25, 0.75, 0.5, -0.75, 0.25, 0.25, 0.5, -0.25, 0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, -0.5, -0.5, 0.5, 1.0, -0.75, 1.0, 1.0, 0.75, 0.5, -1.0, -1.0, -0.25, -0.5, 1.0, 0.0, 0.25, 0.0, 1.0, -0.75, 0.75, -0.5, 0.25, 0.25, -0.25, -1.0, 0.5, 0.5, 0.5, 0.25, 1.0, 1.0, -0.5, 1.0, 0.0, -0.75, -0.25, -1.0, 0.0, -0.25, -0.5, -0.5, 1.0, -0.25, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, -0.25, -0.5, -0.5, 0.5, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.5, 0.5, 1.0, -1.0, -1.0, -0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, 0.5, 0.5, 1.0, -0.25, -0.25, 0.0, 0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, -1.0, -0.5, 0.75, 0.0, 1.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.25, -0.5, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.75, 0.25, -0.75, 0.5, 1.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.0, -0.75, -0.5, 0.25, 0.0, 0.0, -0.25, 0.75, -1.0, 0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    command_encoder101.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    const array3 = new Float32Array([-0.5, -0.75, 0.5, 1.0, 0.5, 0.75, 1.0, -0.5, 0.0, 0.0, -0.75, 0.0, 0.75, -1.0, 0.5, 1.0, -0.5, 0.5, 0.0, -0.25, -0.5, 0.75, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, -0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.25, 1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 0.25, -1.0, -0.75, -0.75, 1.0, -0.25, -1.0, 0.0, 0.5, -1.0, 1.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, 0.75, -0.5, -1.0, 0.0, 0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.25, 0.0, 0.25, 0.5, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture100.destroy();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const array4 = new Float32Array([0.5, 0.75, 0.25, 0.75, 0.5, 0.75, 0.75, 0.75, -1.0, 0.75, -0.75, -0.5, 0.25, -0.5, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 1.0, 0.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.0, -0.25, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, 0.0, 1.0, -0.75, -0.75, -0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, 0.75, 0.5, 0.75, -1.0, -1.0, -0.25, -0.75, -0.5, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("internal");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    texture103.destroy();
    const array5 = new Float32Array([0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -0.75, -1.0, 0.5, -0.5, -0.25, -0.75, -0.5, -0.25, 0.5, -0.5, -0.75, -0.5, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, -0.25, -1.0, -0.25, -1.0, -0.25, -0.75, 0.75, 0.5, 1.0, 1.0, 0.5, -0.75, 0.0, 0.25, 1.0, 0.0, 0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.5, -0.75, 0.5, -0.25, 0.5, 0.25, 0.25, -0.5, 0.25, -0.75, 0.5, 0.5, 1.0, -0.5, 0.25, 0.0, -1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.5, 0.75, 0.25, 0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, 0.25, -0.5, -0.5, -0.5, 1.0, 0.75, 1.0, 0.25, -0.5, ]);
    device20.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    texture102.destroy();
    
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    texture101.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([-0.25, -0.75, -0.25, 0.0, -0.25, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 0.25, 0.0, 0.75, 0.25, 0.75, 0.75, 0.5, -0.25, -0.25, -0.25, -1.0, 0.5, 0.0, 0.0, 0.0, -0.75, 0.25, -1.0, 1.0, 0.5, 0.25, 0.0, -0.5, -1.0, 1.0, -0.5, 0.0, 0.75, 0.0, -0.75, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.5, 1.0, 0.75, 0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 0.5, 0.5, 0.0, 0.0, ]);
    device00.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture104.destroy();
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
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder1010.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture402.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const array7 = new Float32Array([0.5, 0.25, 0.25, -0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -0.25, -0.5, 1.0, 0.0, -0.5, 0.25, -1.0, 0.25, 0.75, 0.25, -0.25, 0.25, -0.75, -0.75, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, -1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -1.0, 0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.25, 0.75, -1.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, 0.25, -1.0, 0.25, -0.75, -0.5, -0.5, 0.25, -0.75, 0.5, -0.75, 0.5, -0.25, -0.75, 0.5, -0.5, 0.25, 1.0, -0.75, -0.75, 0.0, 0.75, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 0.25, ]);
    device30.pushErrorScope("internal");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
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
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_buffer403 = command_encoder403.finish();
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_buffer402 = command_encoder402.finish();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.popDebugGroup()
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    device10.pushErrorScope("internal");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_buffer405 = command_encoder405.finish();
    const array8 = new Float32Array([0.5, 0.0, -1.0, 0.5, 0.0, -0.25, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, 0.5, -0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.5, 0.5, -0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, 0.5, -0.5, -0.5, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.25, 0.0, -1.0, -0.75, -0.25, -0.5, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, 0.25, 0.25, -0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 0.25, 1.0, -0.25, 0.75, 0.5, 1.0, 0.5, -0.5, 1.0, -0.25, 1.0, -0.5, 0.5, -0.25, -0.75, 0.0, 0.0, -0.25, 0.5, 0.0, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, ]);
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.75, 0.75, -0.5, 1.0, 0.75, 0.0, -1.0, 0.5, -0.5, 0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -0.25, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -0.5, 0.25, -0.75, -1.0, 1.0, 0.75, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.5, 0.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, -0.5, -0.75, 0.5, -0.75, -1.0, -1.0, -0.25, 0.25, 0.0, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, 0.0, 1.0, -0.25, -0.5, -1.0, 0.0, -0.5, 0.25, ]);
    device40.pushErrorScope("validation");
    device50.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    texture401.destroy();
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture106.destroy();
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    compute_pass_encoder1020.popDebugGroup()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    texture300.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array10 = new Float32Array([0.25, -0.75, 1.0, 0.25, -1.0, -0.25, 0.5, 0.5, 0.0, 0.5, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, -0.5, -0.75, 0.75, -0.75, 0.25, -0.25, -0.25, -0.5, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 0.5, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, -0.25, 0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.5, 1.0, 0.75, 1.0, -0.5, 1.0, -0.5, 0.25, 0.5, -0.25, -0.75, -1.0, -0.75, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, -1.0, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.75, 0.0, -0.5, 0.25, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.25, -0.75, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder302.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.popDebugGroup()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    texture302.destroy();
    
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    texture105.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder4040.insertDebugMarker("marker")
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device70.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const array11 = new Float32Array([-1.0, -0.25, -0.25, -1.0, -1.0, -1.0, 0.5, -0.5, -0.75, -0.75, -0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.0, -1.0, 1.0, -0.5, 0.0, 1.0, 0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, 0.75, 0.25, -1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.0, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.75, -0.5, -0.25, 1.0, 0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 0.0, 0.0, 0.5, 0.25, -0.25, 0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, ]);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    compute_pass_encoder4060.insertDebugMarker("marker")
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
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device90.pushErrorScope("internal");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    texture301.destroy();
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device30.pushErrorScope("validation");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    compute_pass_encoder4060.insertDebugMarker("marker")
    const command_buffer303 = command_encoder303.finish();
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder4040.popDebugGroup()
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
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    texture303.destroy();
    texture109.destroy();
    
    device60.pushErrorScope("validation");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture900.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.queue.submit([command_buffer402, ]);
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    texture108.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.popDebugGroup()
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    compute_pass_encoder4010.insertDebugMarker("marker")
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    device80.pushErrorScope("validation");
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    
    const array12 = new Float32Array([0.5, -0.75, -0.5, 0.75, 1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 1.0, 1.0, 0.25, -0.75, -0.25, 0.25, 0.5, -0.75, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.75, 1.0, 0.25, 1.0, -0.5, 0.0, -0.25, -0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.25, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 0.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.5, 0.5, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, -0.5, 0.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.5, -0.25, -0.5, -1.0, ]);
    
    texture600.destroy();
    device100.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    compute_pass_encoder4040.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture_view10100 = texture1010.createView({ label: "texture_view10100" });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    command_encoder900.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3020.popDebugGroup()
    const texture_view10002 = texture1000.createView({ label: "texture_view10002" });
    command_encoder901.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    texture305.destroy();
    device10.pushErrorScope("validation");
    const command_buffer1100 = command_encoder1100.finish();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const texture_view1073 = texture107.createView({ label: "texture_view1073" });
    const texture_view10003 = texture1000.createView({ label: "texture_view10003" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    compute_pass_encoder4040.popDebugGroup()
    device110.pushErrorScope("out-of-memory");
    texture1000.destroy();
    command_encoder901.insertDebugMarker("mymarker");
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4060.pushDebugGroup("group_marker")
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder4060.insertDebugMarker("marker")
    
    texture1002.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    command_encoder900.insertDebugMarker("mymarker");
    texture1001.destroy();
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    compute_pass_encoder3010.popDebugGroup()
    device80.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    texture107.destroy();
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pass_encoder4070 = command_encoder407.beginComputePass({ label: "compute_pass_encoder4070" });
    device60.pushErrorScope("validation");
    const command_buffer1101 = command_encoder1101.finish();
    compute_pass_encoder1010.popDebugGroup()
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture902.destroy();
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    const texture_view10030 = texture1003.createView({ label: "texture_view10030" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture1003.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10100,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer900 = command_encoder900.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    texture1010.destroy();
    const command_buffer600 = command_encoder600.finish();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    compute_pass_encoder4060.insertDebugMarker("marker")
    command_encoder602.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device100.destroy();
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout606 = device60.createBindGroupLayout({ 
        label: "bind_group_layout606",
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
    command_encoder601.insertDebugMarker("mymarker");
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder409 = device40.createCommandEncoder({ label: "command_encoder409" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    command_encoder409.pushDebugGroup("mygroupmarker")
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    texture304.destroy();
    const bind_group_layout607 = device60.createBindGroupLayout({ 
        label: "bind_group_layout607",
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
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    compute_pass_encoder4070.insertDebugMarker("marker")
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    device110.pushErrorScope("internal");
    texture1100.destroy();
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    device60.pushErrorScope("internal");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    compute_pass_encoder4070.pushDebugGroup("group_marker")
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    texture307.destroy();
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1073,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    texture901.destroy();
    compute_pass_encoder4070.insertDebugMarker("marker")
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    compute_pass_encoder6020.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
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
    texture306.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder6010.insertDebugMarker("marker")
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder4040.popDebugGroup()
    
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device130.pushErrorScope("out-of-memory");
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
    
    
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device120.destroy();
    device10.pushErrorScope("internal");
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture_view10110 = texture1011.createView({ label: "texture_view10110" });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
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
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3060,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    texture601.destroy();
    command_encoder408.insertDebugMarker("mymarker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture404.destroy();
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    compute_pass_encoder1010.popDebugGroup()
    texture603.destroy();
    compute_pass_encoder4060.insertDebugMarker("marker")
    const compute_pass_encoder4090 = command_encoder409.beginComputePass({ label: "compute_pass_encoder4090" });
    
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device60.queue.submit([command_buffer600, ]);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4060.popDebugGroup()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4070.popDebugGroup()
    compute_pass_encoder9010.popDebugGroup()
    const command_buffer408 = command_encoder408.finish();
    device40.queue.submit([command_buffer408, ]);
}