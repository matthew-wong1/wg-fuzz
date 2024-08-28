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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.popDebugGroup()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder0010.popDebugGroup()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.popDebugGroup()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("validation");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    
    
    
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder0060.popDebugGroup()
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0030.popDebugGroup()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder100.clearBuffer(buffer100);
    compute_pass_encoder0040.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const command_buffer201 = command_encoder201.finish();
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
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder008.clearBuffer(buffer003);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0060.pushDebugGroup("group_marker")
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
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.pushErrorScope("out-of-memory");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder2020.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.popDebugGroup()
    
    
    device40.pushErrorScope("validation");
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    compute_pass_encoder0040.popDebugGroup()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    command_encoder101.clearBuffer(buffer101);
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder2020.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder008.clearBuffer(buffer003);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    command_encoder101.clearBuffer(buffer100);
    
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    const command_buffer101 = command_encoder101.finish();
    
    command_encoder102.clearBuffer(buffer104);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer102 = command_encoder102.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
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
    compute_pass_encoder0040.popDebugGroup()
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
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0050.popDebugGroup()
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder008.clearBuffer(buffer003);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_buffer203 = command_encoder203.finish();
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    command_encoder103.clearBuffer(buffer100);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0060.popDebugGroup()
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.popDebugGroup()
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
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
    command_encoder103.clearBuffer(buffer101);
    
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
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder0030.popDebugGroup()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    compute_pass_encoder0030.popDebugGroup()
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder103.clearBuffer(buffer100);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder103.clearBuffer(buffer100);
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.pushErrorScope("internal");
    
    device30.pushErrorScope("internal");
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.pushErrorScope("out-of-memory");
    
    
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder403.clearBuffer(buffer401);
    compute_pass_encoder0010.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
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
    command_encoder400.clearBuffer(buffer401);
    
    
    
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder0000.popDebugGroup()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer400 = command_encoder400.finish();
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    compute_pass_encoder2020.popDebugGroup()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder4010.popDebugGroup()
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const command_buffer800 = command_encoder800.finish();
    command_encoder008.clearBuffer(buffer003);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer300 = command_encoder300.finish();
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_buffer0010 = command_encoder0010.finish();
    
    
    
    
    
    const command_buffer404 = command_encoder404.finish();
    
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    compute_pass_encoder1030.popDebugGroup()
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder008.clearBuffer(buffer003);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    command_encoder403.clearBuffer(buffer401);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder4020.popDebugGroup()
    
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.pushErrorScope("validation");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
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
    
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    compute_pass_encoder4020.popDebugGroup()
    
    
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.popDebugGroup()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    compute_pass_encoder2040.popDebugGroup()
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder303.clearBuffer(buffer302);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    command_encoder303.clearBuffer(buffer302);
    compute_pass_encoder0060.popDebugGroup()
    const command_buffer901 = command_encoder901.finish();
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
}