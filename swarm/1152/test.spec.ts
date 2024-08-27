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
    
    
    const array0 = new Float32Array([-0.5, -0.25, 0.0, 1.0, -0.25, 0.75, -1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 0.5, 0.75, -0.75, -0.25, -0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 1.0, -0.5, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, -0.75, 0.25, 0.5, 0.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, 0.5, 0.25, -1.0, -0.75, -0.25, 0.0, 0.5, -0.25, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.5, ]);
    
    
    const array1 = new Float32Array([0.75, -0.5, 0.5, 0.5, -0.75, -0.75, 1.0, -0.75, 0.25, -0.75, -1.0, -0.5, -0.5, 0.25, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, 0.5, -0.5, 1.0, -0.25, -0.5, 1.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, -0.25, -0.5, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, -0.25, -0.75, 1.0, -0.25, 0.75, 0.75, -0.25, 0.5, 0.75, 0.25, 1.0, 1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, 0.0, 0.25, -0.5, -1.0, 0.0, 0.5, 1.0, 1.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -1.0, 0.75, ]);
    
    const array2 = new Float32Array([-1.0, 0.75, 0.75, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, 0.25, -0.5, 0.75, -0.25, 0.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.5, -0.75, 1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -0.75, 1.0, -0.75, -0.25, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, -0.5, -1.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.75, -0.25, 0.25, -0.25, -0.5, -0.75, -0.75, 1.0, 0.75, -0.25, 1.0, 0.25, 0.25, 0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, -0.25, 0.0, 0.5, -1.0, 1.0, -0.5, -0.75, 0.25, 0.5, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("validation");
    command_encoder000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("out-of-memory");
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device10.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    device20.pushErrorScope("internal");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.pushErrorScope("validation");
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.pushErrorScope("out-of-memory");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    compute_pass_encoder0001.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([0.5, 0.75, 0.5, 0.0, 1.0, 1.0, 0.25, -0.25, -0.25, 0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.0, 1.0, 0.25, -0.75, 1.0, -0.5, 0.0, -1.0, 0.0, 0.5, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.25, -0.25, 0.25, 0.75, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.75, 0.5, -0.25, 0.5, -0.25, 1.0, 0.5, 0.0, -1.0, 0.75, -0.5, 0.25, 0.75, 1.0, 0.25, 0.5, -0.75, 0.0, -1.0, -0.25, 1.0, 1.0, -0.25, -0.75, -0.25, -0.75, 1.0, -0.25, 0.75, 1.0, -1.0, -0.75, 0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 0.25, 0.25, 0.0, 0.75, 0.0, 0.25, -0.5, -1.0, 0.25, 1.0, ]);
    command_encoder001.popDebugGroup()
    
    
    
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.popDebugGroup()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const command_buffer301 = command_encoder301.finish();
    
    device30.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    compute_pass_encoder0010.popDebugGroup()
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const command_buffer004 = command_encoder004.finish();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device40.pushErrorScope("internal");
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder303.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
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
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device00.pushErrorScope("internal");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.pushErrorScope("validation");
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    render_bundle_encoder301.popDebugGroup();
    command_encoder001.copyBufferToBuffer(
        buffer005,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder000.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const array4 = new Float32Array([-0.25, 0.25, -0.75, 0.75, -0.25, -0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 0.5, 1.0, -0.25, 0.75, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, -0.75, 1.0, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, -1.0, 0.75, 1.0, 0.25, -0.25, -0.75, -0.75, 0.0, 0.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.5, -0.25, -0.5, -0.75, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.75, 0.0, -0.5, 0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, 0.0, -0.5, -0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.75, -0.25, 0.25, ]);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    device30.queue.submit([command_buffer301, ]);
    device10.pushErrorScope("validation");
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    
    device10.queue.submit([command_buffer100, ]);
    
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder300.popDebugGroup();
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    command_encoder005.copyBufferToBuffer(
        buffer005,
        0,
        buffer001,
        0,
        400
    );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array5 = new Float32Array([-1.0, 0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 1.0, 0.5, -0.25, 0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, 0.25, -0.25, 0.0, 0.25, -1.0, -0.75, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, 0.5, 1.0, -1.0, -1.0, -1.0, 0.25, 0.75, -0.25, -0.25, -0.25, -0.75, 0.0, 0.5, 0.75, -0.5, -1.0, 0.25, -1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, 0.5, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -0.25, -0.25, 1.0, 0.75, -1.0, 0.0, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.0, 1.0, ]);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
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
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    
    command_encoder006.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1020.popDebugGroup()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    command_encoder007.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder100.popDebugGroup();
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    render_bundle_encoder302.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    compute_pass_encoder0001.insertDebugMarker("marker")
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    command_encoder003.copyBufferToBuffer(
        buffer003,
        0,
        buffer000,
        0,
        400
    );
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    compute_pass_encoder1040.popDebugGroup()
    device30.pushErrorScope("validation");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder1010.popDebugGroup()
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_bundle_encoder303.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder1030.popDebugGroup()
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    command_encoder007.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    command_encoder003.popDebugGroup()
    const array6 = new Float32Array([0.5, 0.0, -0.5, 1.0, 0.25, 0.5, 0.0, -1.0, 0.5, -0.5, -0.25, -1.0, -0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 0.5, 0.25, 1.0, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, 0.0, -0.25, -1.0, 0.75, 1.0, 0.5, -0.5, -0.25, -0.5, 0.5, 1.0, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, 0.75, -0.75, -0.75, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.5, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, -0.5, 0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 0.5, 0.75, -0.25, ]);
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_buffer201 = command_encoder201.finish();
    device40.pushErrorScope("validation");
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    command_encoder001.copyBufferToBuffer(
        buffer004,
        0,
        buffer004,
        0,
        400
    );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    command_encoder006.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    command_encoder400.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder4010.popDebugGroup()
    command_encoder003.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    const command_buffer005 = command_encoder005.finish();
    device30.queue.submit([command_buffer303, ]);
    const command_buffer003 = command_encoder003.finish();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, command_buffer005, ]);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder4010.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0001.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    command_encoder102.popDebugGroup()
}