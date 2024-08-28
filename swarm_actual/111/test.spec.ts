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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    command_encoder100.popDebugGroup()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.popDebugGroup()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer000.destroy()
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    command_encoder101.popDebugGroup()
    
    buffer001.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder103.insertDebugMarker("mymarker");
    
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.insertDebugMarker("mymarker");
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
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
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
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder106.insertDebugMarker("mymarker");
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer002.destroy()
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
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
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder001.popDebugGroup()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer102.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer003.destroy()
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder001.insertDebugMarker("mymarker");
    buffer103.destroy()
    
    
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
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
    command_encoder107.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder108.pushDebugGroup("mygroupmarker")
    command_encoder107.pushDebugGroup("mygroupmarker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer104.destroy()
    command_encoder001.popDebugGroup()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder107.insertDebugMarker("mymarker");
    buffer105.destroy()
    command_encoder108.popDebugGroup()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder106.insertDebugMarker("mymarker");
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    command_encoder107.popDebugGroup()
    command_encoder107.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    command_encoder001.insertDebugMarker("mymarker");
    buffer006.destroy()
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    command_encoder106.pushDebugGroup("mygroupmarker")
    command_encoder106.popDebugGroup()
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    command_encoder001.insertDebugMarker("mymarker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    command_encoder005.pushDebugGroup("mygroupmarker")
    buffer008.destroy()
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
    buffer009.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    command_encoder004.insertDebugMarker("mymarker");
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer004.destroy()
    command_encoder005.popDebugGroup()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
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
    buffer007.destroy()
    {
        await buffer0011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0011.unmap();
        console.log(new Float32Array(data));
    }
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    buffer0011.destroy()
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    
    
    buffer106.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer100.destroy()
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    command_encoder006.pushDebugGroup("mygroupmarker")
    buffer300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer005.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder109.insertDebugMarker("mymarker");
    
    
    command_encoder109.insertDebugMarker("mymarker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder109.pushDebugGroup("mygroupmarker")
    command_encoder109.insertDebugMarker("mymarker");
    buffer200.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    buffer0012.destroy()
    const compute_pass_encoder1090 = command_encoder109.beginComputePass({ label: "compute_pass_encoder1090" });
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
    compute_pass_encoder1090.pushDebugGroup("group_marker")
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder1060.pushDebugGroup("group_marker")
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
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    buffer600.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer603.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer602.destroy()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    buffer601.destroy()
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
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
    command_encoder504.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
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
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
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
    buffer400.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    buffer301.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.insertDebugMarker("mymarker");
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder602.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const bind_group_layout1011 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1011",
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    
    buffer0013.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    command_encoder501.insertDebugMarker("mymarker");
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer202.destroy()
    command_encoder201.popDebugGroup()
    command_encoder501.insertDebugMarker("mymarker");
    const bind_group_layout0012 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0012",
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
    buffer605.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    command_encoder200.popDebugGroup()
    buffer0010.destroy()
    
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    buffer604.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder501.popDebugGroup()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    
    command_encoder200.insertDebugMarker("mymarker");
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    buffer606.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder300.copyBufferToBuffer(
        buffer304,
        0,
        buffer303,
        0,
        400
    );
    
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
    command_encoder501.pushDebugGroup("mygroupmarker")
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
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder602.popDebugGroup()
    
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder501.popDebugGroup()
    command_encoder602.insertDebugMarker("mymarker");
    buffer303.destroy()
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder203.popDebugGroup()
    const compute_pass_encoder10100 = command_encoder1010.beginComputePass({ label: "compute_pass_encoder10100" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder603.insertDebugMarker("mymarker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder300.insertDebugMarker("mymarker");
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1012 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1012",
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
    compute_pass_encoder5050.pushDebugGroup("group_marker")
    buffer302.destroy()
    command_encoder200.popDebugGroup()
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer304.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.insertDebugMarker("mymarker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout0013 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0013",
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    command_encoder1011.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    
    buffer701.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder1012 = device10.createCommandEncoder({ label: "command_encoder1012" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    buffer0014.destroy()
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer204.destroy()
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const bind_group_layout1013 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1013",
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
    const command_encoder1013 = device10.createCommandEncoder({ label: "command_encoder1013" });
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    command_encoder200.popDebugGroup()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    buffer205.destroy()
    const bind_group_layout0014 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0014",
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer501.destroy()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder701.insertDebugMarker("mymarker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder1011.insertDebugMarker("mymarker");
    buffer500.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder1011.insertDebugMarker("mymarker");
    
    buffer207.destroy()
    buffer607.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer608.destroy()
    command_encoder1012.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pass_encoder10130 = command_encoder1013.beginComputePass({ label: "compute_pass_encoder10130" });
    
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder402.insertDebugMarker("mymarker");
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer703.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pass_encoder10120 = command_encoder1012.beginComputePass({ label: "compute_pass_encoder10120" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    command_encoder200.popDebugGroup()
    command_encoder402.popDebugGroup()
    command_encoder702.popDebugGroup()
    command_encoder1011.popDebugGroup()
}