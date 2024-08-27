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
    
    device10.pushErrorScope("validation");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    
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
    
    const array0 = new Float32Array([0.75, -0.75, -0.75, 0.5, 0.0, -0.25, -1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -0.25, 1.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 0.75, -0.75, -1.0, 0.25, 0.75, 0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.25, 0.75, -0.75, -0.5, -0.25, 0.25, 0.75, -0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -0.5, 1.0, 0.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, -0.25, -0.25, -1.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, -0.25, 0.75, 0.5, 1.0, 0.75, -1.0, -0.5, 0.0, 0.25, 0.25, 0.5, 0.75, ]);
    
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device10.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query000.destroy()
    buffer001.destroy()
    const array1 = new Float32Array([0.25, 0.5, -0.5, 0.0, 0.75, -0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.5, 0.0, 0.0, -0.25, -1.0, 0.25, -0.75, -1.0, -0.75, 1.0, 0.25, 0.5, 0.0, -1.0, 0.0, -0.25, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.75, -1.0, 0.5, 1.0, -0.25, 0.0, 0.75, 0.25, 0.5, 0.75, 0.0, 0.25, 0.0, -0.5, -1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.25, 0.75, -0.25, 0.25, -0.25, -0.75, 0.75, -1.0, -0.5, -1.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.25, -1.0, 0.5, -0.75, ]);
    
    const command_buffer000 = command_encoder000.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const array2 = new Float32Array([0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.25, 0.75, -1.0, -0.25, -0.75, -0.5, 0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 0.5, -1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.25, 0.0, 0.5, -0.25, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 0.5, 0.75, 0.75, -1.0, 0.25, 1.0, -1.0, -0.75, 0.5, -0.25, 1.0, -0.25, 0.25, -0.75, 0.75, 0.5, 0.5, 0.5, 0.0, -0.75, 0.75, -0.75, 0.0, 0.0, 1.0, 0.0, 0.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, -0.75, -0.25, 0.25, -0.5, 0.0, ]);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.submit([]);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    query000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer002.destroy()
    
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer000,
        0,
        400
    );
    command_encoder200.insertDebugMarker("mymarker");
    query003.destroy()
    
    device00.queue.submit([command_buffer000, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query002.destroy()
    const array3 = new Float32Array([-0.75, 0.75, 0.25, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.5, 1.0, 1.0, -0.5, 0.25, 0.0, -0.5, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 0.5, 1.0, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -0.5, 1.0, 0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -1.0, 0.5, -1.0, 0.75, 1.0, 0.75, -0.25, 1.0, 0.5, 0.75, 0.0, -0.25, -0.25, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 1.0, 0.0, -0.75, 0.25, 0.75, -0.25, -0.75, -1.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.5, -0.5, -0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 1.0, 0.25, 0.25, -0.75, -0.25, ]);
    
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.submit([]);
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    device20.pushErrorScope("validation");
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
    
    query200.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query001.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    query002.destroy()
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
    query002.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer300.destroy()
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    command_encoder001.insertDebugMarker("mymarker");
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    query004.destroy()
    
    query005.destroy()
    
    query001.destroy()
    query002.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    query002.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder002.insertDebugMarker("mymarker");
    query202.destroy()
    buffer100.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    device20.queue.submit([command_buffer201, ]);
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
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    query201.destroy()
    buffer202.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    query201.destroy()
    
    query001.destroy()
    
    
    device30.pushErrorScope("internal");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer201.destroy()
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    query003.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    buffer003.destroy()
    const array4 = new Float32Array([1.0, -0.5, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -0.75, 0.0, -1.0, 1.0, 1.0, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.25, 0.5, -0.25, 0.5, -1.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.5, -0.5, 0.75, -0.5, 0.75, 1.0, -0.75, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, -0.75, -0.75, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 1.0, -0.25, -0.25, 0.0, -0.75, 1.0, -1.0, ]);
    
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
    query005.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    query000.destroy()
    query202.destroy()
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    buffer000.destroy()
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    
    const array5 = new Float32Array([0.75, 0.75, -0.75, 0.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 1.0, -0.5, -0.5, 0.0, 0.75, 0.5, 1.0, 0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.75, -0.75, 0.5, 1.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 0.25, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, -0.25, 1.0, 0.75, -0.25, 0.25, 0.0, -0.25, 0.75, 0.0, -1.0, -0.5, -0.5, -0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -0.25, 0.5, -1.0, 0.25, -0.5, 1.0, -0.5, -1.0, 0.25, 0.5, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer301 = command_encoder301.finish();
    buffer202.destroy()
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([0.5, -1.0, 0.75, 0.75, 0.5, 0.75, -0.25, -0.75, -0.25, 0.5, 0.5, -0.25, 0.0, 0.5, 1.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.5, 0.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, -1.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.75, -1.0, 0.0, 1.0, -1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, -0.5, -0.5, -1.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, -0.5, -0.5, 0.75, -0.5, 0.25, 0.0, -0.75, -0.25, 0.0, -0.75, -0.75, 1.0, 1.0, 0.5, 0.75, 0.75, 0.25, -0.75, 0.0, ]);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    buffer200.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    query006.destroy()
    
    
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
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
    device20.pushErrorScope("internal");
    query006.destroy()
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer302.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer302 = command_encoder302.finish();
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    buffer301.destroy()
    
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
    command_encoder003.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder002.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    const array7 = new Float32Array([-0.5, 0.75, 0.0, 1.0, -0.75, 1.0, -0.5, 0.75, 0.25, 1.0, 0.25, 0.25, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.75, -0.5, -0.75, 1.0, -1.0, -0.5, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, 0.25, -0.75, 0.5, -1.0, 1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.0, -1.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, 0.0, 0.25, -0.25, -1.0, 0.25, -1.0, -0.5, 1.0, -0.25, -1.0, -0.5, -0.75, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, -0.25, 0.5, -0.25, 0.25, -0.25, 0.5, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, ]);
    
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
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
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    query005.destroy()
    
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    query202.destroy()
    const command_buffer006 = command_encoder006.finish();
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.insertDebugMarker("mymarker");
    buffer303.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder001.copyBufferToBuffer(
        buffer005,
        0,
        buffer000,
        0,
        400
    );
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device30.pushErrorScope("out-of-memory");
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    buffer005.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder002.insertDebugMarker("mymarker");
    query006.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
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
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    query100.destroy()
    query201.destroy()
    
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer304 = command_encoder304.finish();
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer003,
        0
    )
    buffer303.destroy()
    device40.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder005.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query000.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    query007.destroy()
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    buffer001.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder003.resolveQuerySet(
        query007,
        0,
        32,
        buffer005,
        0
    )
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder002.resolveQuerySet(
        query008,
        0,
        32,
        buffer004,
        0
    )
    query201.destroy()
    query201.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder003.resolveQuerySet(
        query007,
        0,
        32,
        buffer003,
        0
    )
    device20.pushErrorScope("internal");
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
    query008.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    
    query006.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.resolveQuerySet(
        query008,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    query300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder002.resolveQuerySet(
        query008,
        0,
        32,
        buffer002,
        0
    )
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    buffer000.destroy()
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
    render_bundle_encoder400.popDebugGroup();
    query203.destroy()
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer001,
        0,
        400
    );
    query203.destroy()
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    
    buffer400.destroy()
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
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
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    device00.pushErrorScope("out-of-memory");
    query300.destroy()
    command_encoder005.insertDebugMarker("mymarker");
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
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
    buffer204.destroy()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query201.destroy()
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    buffer203.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    query204.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    command_encoder005.resolveQuerySet(
        query009,
        0,
        32,
        buffer005,
        0
    )
    query300.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    
    query007.destroy()
    command_encoder002.resolveQuerySet(
        query007,
        0,
        32,
        buffer001,
        0
    )
    command_encoder005.resolveQuerySet(
        query008,
        0,
        32,
        buffer004,
        0
    )
    command_encoder305.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query009,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer004,
        0
    )
    command_encoder305.copyBufferToBuffer(
        buffer301,
        0,
        buffer303,
        0,
        400
    );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder004.insertDebugMarker("mymarker");
    query008.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer005 = command_encoder005.finish();
    query200.destroy()
    command_encoder003.resolveQuerySet(
        query006,
        0,
        32,
        buffer000,
        0
    )
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    buffer400.destroy()
    query000.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query002.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer401.destroy()
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder004.resolveQuerySet(
        query0010,
        0,
        32,
        buffer000,
        0
    )
    
    
    command_encoder002.resolveQuerySet(
        query0010,
        0,
        32,
        buffer002,
        0
    )
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    query005.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device50.queue.submit([]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    const command_buffer003 = command_encoder003.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    const command_buffer306 = command_encoder306.finish();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer305 = command_encoder305.finish();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer202 = command_encoder202.finish();
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer303, command_buffer306, ]);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer006, ]);
    device30.queue.submit([command_buffer305, ]);
    device00.queue.submit([command_buffer005, ]);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    device70.queue.submit([]);
    const command_buffer001 = command_encoder001.finish();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer304, ]);
}