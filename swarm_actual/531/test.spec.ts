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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer001 = command_encoder001.finish();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query000.destroy()
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.destroy();
    const command_buffer000 = command_encoder000.finish();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    query000.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_buffer002 = command_encoder002.finish();
    query000.destroy()
    query102.destroy()
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    
    
    query000.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer004 = command_encoder004.finish();
    query102.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    query103.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.destroy();
    const command_buffer400 = command_encoder400.finish();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    query400.destroy()
    query103.destroy()
    query103.destroy()
    const command_buffer003 = command_encoder003.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query102.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_buffer401 = command_encoder401.finish();
    query001.destroy()
    query002.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer102 = command_encoder102.finish();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query401.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    query402.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    
    query403.destroy()
    const command_buffer006 = command_encoder006.finish();
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query100.destroy()
    const command_buffer005 = command_encoder005.finish();
    
    
    query403.destroy()
    query101.destroy()
    query103.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query100.destroy()
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query104.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer105 = command_encoder105.finish();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer103 = command_encoder103.finish();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query000.destroy()
    query105.destroy()
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query103.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer104 = command_encoder104.finish();
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query403.destroy()
    query403.destroy()
    query400.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer402 = command_encoder402.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    query400.destroy()
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query101.destroy()
    query003.destroy()
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    query105.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    command_encoder107.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query400.destroy()
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_buffer403 = command_encoder403.finish();
    const command_buffer007 = command_encoder007.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    query101.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query106.destroy()
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    query101.destroy()
    query100.destroy()
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_buffer405 = command_encoder405.finish();
    
    query404.destroy()
    query106.destroy()
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer404 = command_encoder404.finish();
    const command_buffer106 = command_encoder106.finish();
    query000.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query401.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device80.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query403.destroy()
    query403.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const command_buffer500 = command_encoder500.finish();
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    query103.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_buffer501 = command_encoder501.finish();
    
    
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    query000.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    query106.destroy()
    query002.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const command_buffer700 = command_encoder700.finish();
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    query100.destroy()
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    query002.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query101.destroy()
    query101.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    query005.destroy()
    query405.destroy()
    query101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    const command_buffer701 = command_encoder701.finish();
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    
    query102.destroy()
    query404.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    
    query401.destroy()
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    query107.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    
    command_encoder407.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    render_bundle_encoder402.insertDebugMarker("marker");
    
    query401.destroy()
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder107.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    query102.destroy()
    
    
    query001.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query101.destroy()
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_buffer107 = command_encoder107.finish();
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    query106.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_bundle_encoder101.insertDebugMarker("marker");
    query107.destroy()
    
    query107.destroy()
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query102.destroy()
    query000.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query500.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    query400.destroy()
    query102.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_buffer407 = command_encoder407.finish();
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    query404.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    query104.destroy()
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder402.insertDebugMarker("marker");
    query405.destroy()
    query500.destroy()
    const command_buffer702 = command_encoder702.finish();
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    query106.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query1100.destroy()
    
    device110.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    query406.destroy()
    query405.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query005.destroy()
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    query500.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    render_bundle_encoder700.insertDebugMarker("marker");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    query003.destroy()
    query402.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    query003.destroy()
    query406.destroy()
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query006.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    query004.destroy()
    device100.destroy();
    device120.destroy();
    
    
    
    query000.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder408.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    query003.destroy()
    command_encoder406.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    query405.destroy()
    command_encoder406.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    {
        await buffer407.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer407.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer407.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query406.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer009 = command_encoder009.finish();
    render_bundle_encoder702.insertDebugMarker("marker");
    command_encoder704.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    render_bundle_encoder701.insertDebugMarker("marker");
    {
        await buffer407.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer407.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer407.unmap();
        console.log(new Float32Array(data));
    }
    
    query005.destroy()
    
    query105.destroy()
    query107.destroy()
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    
    query501.destroy()
    query400.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder408.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    const command_buffer705 = command_encoder705.finish();
    const command_buffer108 = command_encoder108.finish();
    const command_buffer704 = command_encoder704.finish();
    const command_buffer008 = command_encoder008.finish();
    const command_buffer408 = command_encoder408.finish();
    const command_buffer406 = command_encoder406.finish();
    const command_buffer0010 = command_encoder0010.finish();
    const command_buffer703 = command_encoder703.finish();
}