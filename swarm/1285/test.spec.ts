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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.clearBuffer(buffer000);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.pushErrorScope("internal");
    buffer000.destroy()
    buffer000.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    command_encoder201.clearBuffer(buffer200);
    
    device00.destroy();
    device20.pushErrorScope("out-of-memory");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    buffer100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.clearBuffer(buffer202);
    
    query000.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder202.clearBuffer(buffer202);
    buffer102.destroy()
    query100.destroy()
    
    
    command_encoder203.insertDebugMarker("mymarker");
    query100.destroy()
    
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder203.clearBuffer(buffer202);
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer201.destroy()
    
    device20.pushErrorScope("internal");
    command_encoder202.insertDebugMarker("mymarker");
    buffer203.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    const array0 = new Float32Array([0.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.25, 0.75, -0.75, -0.5, -0.75, 1.0, -0.5, 0.25, -1.0, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, 0.25, 0.5, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, -0.75, -0.25, -1.0, -0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 1.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 1.0, -0.75, 0.5, -0.5, -0.75, -0.5, 0.75, -0.5, 1.0, -0.5, 0.75, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, -0.5, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, 0.25, -1.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.25, -0.75, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    query100.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder203.insertDebugMarker("mymarker");
    query101.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder203.clearBuffer(buffer203);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    query100.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    query103.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    buffer204.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    query300.destroy()
    
    query104.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query103.destroy()
    buffer204.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    query300.destroy()
    query102.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query201.destroy()
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query201.destroy()
    query106.destroy()
    query100.destroy()
    
    query201.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    query100.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query201.destroy()
    query104.destroy()
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    command_encoder101.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    
    buffer205.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder101.resolveQuerySet(
        query105,
        0,
        32,
        buffer103,
        0
    )
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    buffer101.destroy()
    query301.destroy()
    query201.destroy()
    const array1 = new Float32Array([0.25, 0.5, 0.25, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -0.75, -0.5, 1.0, -0.25, -0.75, 0.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.25, 1.0, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 1.0, -0.75, -1.0, -1.0, 0.5, 0.75, 1.0, -0.25, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 1.0, 0.0, 0.75, -0.5, 0.0, 0.5, 1.0, -1.0, 0.0, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, -0.5, -0.5, 0.0, 0.5, 0.0, 0.5, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, -1.0, 0.0, -0.25, 0.75, 0.5, ]);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query103.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    query301.destroy()
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    query302.destroy()
    device30.pushErrorScope("out-of-memory");
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    device10.pushErrorScope("out-of-memory");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    buffer205.destroy()
    command_encoder100.clearBuffer(buffer103);
    command_encoder300.insertDebugMarker("mymarker");
    query305.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder202.clearBuffer(buffer206);
    command_encoder101.clearBuffer(buffer103);
    query103.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer202.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query102.destroy()
    
    command_encoder501.insertDebugMarker("mymarker");
    
    query305.destroy()
    
    
    
    query303.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    command_encoder501.insertDebugMarker("mymarker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder101.resolveQuerySet(
        query107,
        0,
        32,
        buffer102,
        0
    )
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder301.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query300.destroy()
    query303.destroy()
    query101.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder101.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    query100.destroy()
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
        0
    )
    query600.destroy()
    query305.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query305.destroy()
    query201.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    command_encoder301.insertDebugMarker("mymarker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query107.destroy()
    
    
    buffer501.destroy()
    command_encoder103.clearBuffer(buffer102);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    command_encoder203.clearBuffer(buffer202);
    query202.destroy()
    query101.destroy()
    
    
    query105.destroy()
    
    query502.destroy()
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    buffer206.destroy()
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query104.destroy()
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    
    buffer101.destroy()
    
    
    command_encoder101.resolveQuerySet(
        query108,
        0,
        32,
        buffer104,
        0
    )
    
    query200.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device40.pushErrorScope("internal");
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder104.resolveQuerySet(
        query108,
        0,
        32,
        buffer102,
        0
    )
    buffer104.destroy()
    query102.destroy()
    command_encoder101.resolveQuerySet(
        query108,
        0,
        32,
        buffer100,
        0
    )
    buffer207.destroy()
    query501.destroy()
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer103,
        0
    )
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    query304.destroy()
    const array2 = new Float32Array([-0.5, -0.75, 1.0, -1.0, -0.5, -0.25, 1.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.0, 1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, -0.75, 0.75, 0.25, 0.0, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -0.5, -0.5, 0.5, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, 1.0, 1.0, -0.25, -0.75, 0.5, 1.0, -1.0, 0.5, -0.25, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, -0.25, -0.25, -0.75, -0.25, -0.75, 0.5, -0.5, ]);
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query305.destroy()
    device20.pushErrorScope("internal");
    query102.destroy()
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    
    query502.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder206.insertDebugMarker("mymarker");
    query504.destroy()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query107.destroy()
    
    command_encoder201.clearBuffer(buffer208);
    query504.destroy()
    buffer105.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer208.destroy()
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    query109.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    query502.destroy()
    
    query303.destroy()
    command_encoder206.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder600.insertDebugMarker("mymarker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const array3 = new Float32Array([-0.5, -1.0, -0.25, -0.25, 0.25, -0.75, -0.75, -1.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 0.5, 0.25, -0.5, 1.0, -0.25, -0.75, 0.5, 0.5, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 0.25, -0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.0, -0.25, 0.25, -0.5, 0.25, 0.0, -0.5, -1.0, 1.0, 0.0, 0.0, -0.25, 0.5, 0.5, 0.5, 0.25, -1.0, 0.5, 0.0, 1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -1.0, -0.5, 0.75, -1.0, -0.5, -1.0, -0.75, -0.25, 1.0, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.0, -1.0, 0.25, 0.0, -1.0, -1.0, -0.75, 0.25, -0.25, 0.0, -0.25, 0.75, -1.0, -0.5, -0.75, -0.25, -0.75, -0.5, 0.5, ]);
    command_encoder600.insertDebugMarker("mymarker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query800.destroy()
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer206,
        0
    )
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    
    command_encoder400.clearBuffer(buffer400);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    command_encoder501.resolveQuerySet(
        query505,
        0,
        32,
        buffer502,
        0
    )
    query300.destroy()
    
    
    buffer205.destroy()
    
    command_encoder101.resolveQuerySet(
        query107,
        0,
        32,
        buffer100,
        0
    )
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    query107.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    query505.destroy()
    query601.destroy()
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    query106.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query503.destroy()
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query201.destroy()
    query104.destroy()
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}