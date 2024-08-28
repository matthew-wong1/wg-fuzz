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
    const array0 = new Float32Array([1.0, -0.5, 0.0, 1.0, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.75, -0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 1.0, -0.25, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.5, -0.25, -0.75, 1.0, -1.0, 1.0, -0.75, 0.75, -0.25, 1.0, -0.5, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 1.0, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, 0.75, -0.75, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, -1.0, -0.5, 0.75, 1.0, -0.5, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 0.0, ]);
    const array1 = new Float32Array([1.0, -0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -0.25, -0.75, 1.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, -0.75, -0.5, -0.5, -0.75, -1.0, 0.0, 1.0, -0.5, -0.75, 0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.75, -0.5, 0.0, 0.0, 0.75, 0.0, -0.25, 0.25, 0.0, 0.5, -0.75, 0.75, -0.5, 1.0, 1.0, -1.0, -0.75, -0.25, 0.0, -1.0, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.5, 0.0, 0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.25, 0.75, 0.25, 0.25, -0.75, -0.5, 0.25, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, -1.0, 0.75, -0.75, 0.5, 0.0, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.5, 0.5, -1.0, -0.75, -0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 1.0, 1.0, 1.0, -0.75, 1.0, 1.0, -0.25, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, 0.0, -0.75, -0.75, -0.75, -0.75, 0.0, -0.25, 0.75, -0.75, 0.5, -0.25, 1.0, -0.75, -0.75, -1.0, -1.0, -0.25, 0.0, 0.5, -0.5, 0.75, ]);
    
    device10.pushErrorScope("validation");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device00.pushErrorScope("validation");
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([0.0, -0.5, 0.5, -0.5, -0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, -0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 0.5, -1.0, -1.0, -0.75, 0.25, -0.75, 0.5, 0.75, -0.75, -0.5, -0.25, -1.0, -0.5, -0.5, -1.0, 0.25, 1.0, 0.5, 0.5, -1.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.75, 0.5, 0.25, -0.25, -0.25, 0.75, 0.5, -0.75, 0.75, -0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 0.5, 0.0, 0.25, -0.5, ]);
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    const array4 = new Float32Array([0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.75, 0.5, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, 0.25, 0.25, -1.0, 0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 0.25, -0.25, -1.0, 1.0, 0.5, -1.0, 0.75, 0.75, 0.75, -0.75, 0.5, -1.0, 1.0, 0.5, 0.25, -0.25, -1.0, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.75, -0.5, -0.5, 0.0, -0.5, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.5, 0.25, 0.25, -0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.25, 0.5, -0.25, -0.5, -0.25, -0.5, 1.0, 0.75, 1.0, -0.75, -0.25, -1.0, -0.25, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder001.insertDebugMarker("mymarker");
    query100.destroy()
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query101.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query103.destroy()
    device00.pushErrorScope("validation");
    
    query104.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
    device00.pushErrorScope("validation");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_buffer001 = command_encoder001.finish();
    query103.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query101.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query101.destroy()
    const command_buffer102 = command_encoder102.finish();
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    device00.pushErrorScope("validation");
    query104.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    
    const array5 = new Float32Array([-0.25, 0.75, -0.5, -0.5, -0.5, 0.5, -0.25, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.75, -0.75, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -0.5, -0.5, 0.25, 0.0, -0.25, -0.5, 1.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.75, -0.75, -1.0, 0.25, 1.0, 0.5, 0.75, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, -0.75, 0.75, -0.75, 0.75, 1.0, -0.25, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, 0.0, 0.5, 0.5, -0.5, -1.0, -1.0, -0.5, 0.25, 0.0, 0.0, -1.0, -1.0, 0.5, 0.5, -1.0, -0.75, -0.25, 0.75, 0.25, -0.5, 0.75, -0.25, 0.25, -1.0, 1.0, -0.75, ]);
    query103.destroy()
    query100.destroy()
    
    query104.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query104.destroy()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query104.destroy()
    query101.destroy()
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query000.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query001.destroy()
    
    command_encoder300.insertDebugMarker("mymarker");
    query101.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query102.destroy()
    device10.pushErrorScope("validation");
    
    const command_buffer004 = command_encoder004.finish();
    query101.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    const array6 = new Float32Array([0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 0.5, 0.5, 1.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, 0.25, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.75, 0.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -0.5, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, 0.25, 0.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.0, 1.0, -0.25, -0.75, -1.0, -0.75, 0.5, -0.25, -0.5, 1.0, -0.5, -0.25, -0.25, 0.75, ]);
    device20.destroy();
    query000.destroy()
    
    
    command_encoder300.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query000.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-0.5, -1.0, 0.0, 1.0, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, -1.0, 0.0, 0.25, -1.0, -0.25, 0.5, -1.0, 0.75, -0.75, 0.5, -0.5, 1.0, 0.5, 0.0, -0.75, 0.25, -0.5, 0.25, -1.0, 0.5, -1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -0.25, 0.25, -0.25, -1.0, 0.25, -0.25, 0.5, -0.75, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.25, 0.5, -0.75, 0.0, 0.5, -1.0, 0.5, 1.0, -0.75, 1.0, -0.25, 0.5, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, -1.0, 0.5, -1.0, -1.0, -0.5, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query104.destroy()
    
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const array8 = new Float32Array([0.25, -0.25, -0.5, 0.25, 1.0, 1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.0, 1.0, 1.0, -0.75, 0.5, -1.0, -0.5, 0.25, -0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.5, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.25, -0.75, 0.25, -1.0, 0.25, -0.75, -1.0, -0.75, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, -1.0, -0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, 0.75, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query001.destroy()
    device00.pushErrorScope("validation");
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder006.insertDebugMarker("mymarker");
    device30.pushErrorScope("internal");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    const command_buffer005 = command_encoder005.finish();
    
    query101.destroy()
    query104.destroy()
    device00.pushErrorScope("validation");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query002.destroy()
    const command_buffer300 = command_encoder300.finish();
    
    query107.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    query003.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    query103.destroy()
    
    query104.destroy()
    
    query101.destroy()
    
    const array9 = new Float32Array([-0.75, 0.5, 0.75, 0.5, 1.0, -0.75, 0.0, -0.75, -0.25, -0.5, 0.0, 0.25, 0.25, 0.75, -0.25, 0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, -0.75, -0.75, 1.0, -0.75, -0.5, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, 0.0, 0.75, 0.25, -1.0, -0.5, -0.25, -0.75, 1.0, -1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.25, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, 0.75, 1.0, 0.25, 0.75, 0.25, 1.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.25, -0.75, 0.25, -0.75, 1.0, -0.75, -1.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.0, 0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query103.destroy()
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    query104.destroy()
    device10.pushErrorScope("internal");
    command_encoder006.insertDebugMarker("mymarker");
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query002.destroy()
    
    query000.destroy()
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    command_encoder104.insertDebugMarker("mymarker");
    
    query002.destroy()
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.pushErrorScope("validation");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    query106.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query102.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query101.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    device10.pushErrorScope("validation");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query104.destroy()
    device00.pushErrorScope("validation");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    query107.destroy()
    
    query106.destroy()
    query001.destroy()
    query001.destroy()
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.pushErrorScope("internal");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    query005.destroy()
    query109.destroy()
    
    query106.destroy()
    query108.destroy()
    device50.pushErrorScope("validation");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const command_buffer900 = command_encoder900.finish();
    query105.destroy()
    query004.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    query800.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device70.pushErrorScope("validation");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    query106.destroy()
    query303.destroy()
    
    query000.destroy()
    
    query301.destroy()
    query101.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query108.destroy()
    query000.destroy()
    query107.destroy()
    query002.destroy()
    query800.destroy()
    query108.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("internal");
    query300.destroy()
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    query700.destroy()
    query303.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query104.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.insertDebugMarker("mymarker");
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    query500.destroy()
    query801.destroy()
    const command_buffer1000 = command_encoder1000.finish();
    command_encoder601.insertDebugMarker("mymarker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    query100.destroy()
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer701 = command_encoder701.finish();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    query301.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_buffer008 = command_encoder008.finish();
    const compute_pass_encoder10010 = command_encoder1001.beginComputePass({ label: "compute_pass_encoder10010" });
    query108.destroy()
    
    device10.pushErrorScope("out-of-memory");
    query104.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query104.destroy()
    device100.pushErrorScope("validation");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const array10 = new Float32Array([0.0, 0.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -0.5, -0.75, 0.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.25, 0.25, 0.75, 1.0, -0.75, 0.0, -0.25, -1.0, -0.75, -1.0, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.5, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.25, 1.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.25, -0.5, 0.0, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.5, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -0.75, ]);
    
    
    
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query108.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query300.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    query105.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    query102.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query1000.destroy()
    query100.destroy()
    
    query301.destroy()
    query005.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder602.insertDebugMarker("mymarker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    command_encoder301.insertDebugMarker("mymarker");
    
    query900.destroy()
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query502.destroy()
    command_encoder602.insertDebugMarker("mymarker");
    query801.destroy()
    const array11 = new Float32Array([-0.75, -0.25, -0.25, 1.0, -0.5, 0.25, 0.5, -1.0, 1.0, -0.75, -0.75, 0.5, -1.0, 0.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.75, -0.75, 0.5, -1.0, 0.75, -0.25, 0.0, -0.25, 0.75, -0.5, -1.0, 0.75, -1.0, 1.0, 1.0, -0.5, 1.0, 0.75, -0.75, 0.0, 0.5, 0.5, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, -0.5, -1.0, -1.0, 1.0, -0.75, -1.0, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, -0.75, 0.5, 0.25, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.5, 0.75, 0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -1.0, 0.5, -0.25, 1.0, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, 1.0, -1.0, 0.75, -0.75, ]);
    query102.destroy()
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query1011.destroy()
    device90.pushErrorScope("internal");
    query104.destroy()
    
    const command_buffer702 = command_encoder702.finish();
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    query300.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.destroy();
    query100.destroy()
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder800.insertDebugMarker("mymarker");
    query101.destroy()
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    
    command_encoder009.insertDebugMarker("mymarker");
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    query502.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query100.destroy()
    query001.destroy()
    query106.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.pushErrorScope("internal");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    query1011.destroy()
    
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    command_encoder301.insertDebugMarker("mymarker");
    query108.destroy()
    query1000.destroy()
    
    query002.destroy()
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    query1000.destroy()
    
    
    
    command_encoder800.insertDebugMarker("mymarker");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    
    query1011.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query006.destroy()
    query801.destroy()
    query1000.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder7040 = command_encoder704.beginComputePass({ label: "compute_pass_encoder7040" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query500.destroy()
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    compute_pass_encoder7040.pushDebugGroup("group_marker")
    
    
    query101.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
    const command_buffer302 = command_encoder302.finish();
    const command_buffer800 = command_encoder800.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}