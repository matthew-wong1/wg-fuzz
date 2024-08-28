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
    const array0 = new Float32Array([0.5, 0.75, -0.75, -0.5, -0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, -0.25, -0.75, -0.75, -0.75, 0.75, -0.75, 0.5, 1.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 0.25, -0.25, 0.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.25, -1.0, 0.75, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, 0.75, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, -0.75, ]);
    const array1 = new Float32Array([0.25, 0.75, -0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.5, 0.5, -0.75, 0.75, -1.0, 0.75, 0.75, -1.0, -0.25, -0.25, -1.0, 0.75, 1.0, 0.0, 0.0, 0.5, 0.25, 0.25, 0.5, 0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 0.0, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, -0.25, 0.5, -1.0, -0.5, 0.5, 0.5, 1.0, 0.5, 0.0, 0.5, 1.0, -0.75, 0.75, 1.0, 0.5, 1.0, 1.0, -0.75, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.5, 0.75, 0.5, 0.0, 0.0, -0.5, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, -0.75, 0.75, ]);
    const array2 = new Float32Array([0.5, -1.0, 1.0, 0.75, -0.25, 0.75, -0.75, -0.5, 0.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, -0.25, 0.25, 0.75, 0.25, -0.75, 0.5, 0.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, 0.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, 0.0, 0.75, -1.0, 0.0, -0.75, 0.75, -0.5, -0.5, 0.75, 1.0, -0.25, -1.0, 0.75, -1.0, 0.5, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, 0.25, -1.0, 0.75, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.25, -0.75, 1.0, ]);
    const array3 = new Float32Array([0.25, -0.5, -0.25, -0.5, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, -0.5, 0.25, 0.25, -0.25, 1.0, -0.5, 0.75, -0.5, -0.25, -0.5, 0.25, 0.5, -0.75, 1.0, -0.75, 1.0, -1.0, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, 0.75, -0.5, 1.0, 1.0, 0.75, -0.25, 0.0, 0.25, 1.0, -0.25, 1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.0, 0.75, -0.5, 0.0, -0.5, 1.0, -0.75, -0.25, 0.0, 0.5, 0.5, 0.25, -1.0, 0.75, 0.25, 0.5, 0.0, -0.75, 0.25, 0.5, 1.0, 0.5, -1.0, 1.0, -0.75, -1.0, 0.75, 0.0, 0.0, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, ]);
    const array4 = new Float32Array([1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.75, -0.75, 0.75, 1.0, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, -1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, -1.0, 0.0, 0.75, 0.5, -0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 0.0, 0.0, 0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -0.75, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 0.75, -0.75, -0.25, 0.75, -1.0, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 0.25, -0.75, 1.0, 1.0, -0.5, -0.5, 0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array5 = new Float32Array([-0.25, -0.5, 1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.0, 0.5, -0.25, 1.0, 1.0, -0.5, -0.25, 0.75, -1.0, 0.5, 1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.25, 1.0, -1.0, 0.25, -1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.0, 0.75, 0.25, 0.5, -0.5, 0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 0.25, 0.5, 1.0, 0.5, -0.5, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.0, 0.5, 0.25, 1.0, -0.25, -0.5, 0.25, 1.0, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer000 = command_encoder000.finish();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.pushErrorScope("validation");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array6 = new Float32Array([1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.5, -1.0, -1.0, -0.75, -0.25, 1.0, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 0.5, 0.75, 0.0, 0.0, 1.0, -0.25, -1.0, 0.5, 0.0, 1.0, -0.75, 0.5, -1.0, 0.75, 0.75, 0.0, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.0, -0.5, 0.25, 1.0, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.25, -0.75, -0.25, 1.0, 1.0, -0.25, 1.0, -0.5, -0.25, 0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, 1.0, 0.75, -0.25, -1.0, 0.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    command_encoder100.clearBuffer(buffer102);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder100.clearBuffer(buffer102);
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const array7 = new Float32Array([-0.5, -0.5, -0.75, -0.75, 0.25, -0.25, 0.5, -0.5, -0.5, -1.0, -0.75, 0.0, -0.75, 0.0, 0.75, 1.0, 0.5, 0.25, -0.25, 0.0, -0.75, 0.0, -1.0, -1.0, 0.75, 0.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.5, 1.0, 0.5, 0.5, 1.0, -0.5, -1.0, -0.5, -1.0, 0.25, -0.25, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 1.0, 1.0, -0.75, -0.5, -0.75, -0.5, 0.5, -0.5, 0.25, -0.5, -0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, -0.5, 0.0, 1.0, -0.75, -0.25, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, ]);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer101 = command_encoder101.finish();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder100.insertDebugMarker("mymarker");
    const array8 = new Float32Array([-0.75, -1.0, -0.25, 1.0, 0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.75, -0.5, 1.0, 0.5, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, 1.0, 0.0, 0.75, -0.75, 0.75, 0.0, -0.5, -0.5, -0.75, -0.25, -0.25, 0.0, 0.0, 1.0, 0.25, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.5, 0.25, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, -0.75, 0.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, 1.0, -0.75, 0.25, -0.75, 0.75, -0.25, 1.0, ]);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const array9 = new Float32Array([0.25, 0.0, -0.25, -0.5, 0.25, -0.25, 1.0, -1.0, -0.75, 1.0, 0.5, 1.0, 0.0, 0.5, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.5, -0.25, 0.5, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, -1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 0.5, 1.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -1.0, 1.0, -1.0, -1.0, 0.75, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, -1.0, -0.25, 0.25, -0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.0, 0.25, 0.0, 0.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.25, 0.75, -0.5, -1.0, -0.75, 0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, 1.0, ]);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.submit([command_buffer000, ]);
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder100.clearBuffer(buffer102);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_buffer100 = command_encoder100.finish();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    
    command_encoder003.insertDebugMarker("mymarker");
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    command_encoder002.popDebugGroup()
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer004 = command_encoder004.finish();
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder002.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    device00.queue.submit([command_buffer004, ]);
    const array10 = new Float32Array([0.75, -0.75, 0.5, -1.0, 0.25, 0.5, 0.0, 1.0, 0.5, 0.0, -0.75, 0.75, -0.25, 1.0, -0.75, 0.5, -0.75, -0.25, -0.75, 0.5, 0.25, 0.0, 1.0, 0.25, -0.75, 0.0, -0.25, -0.75, 0.25, -1.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.5, 0.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.75, 0.5, 1.0, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, -0.5, 0.0, 0.25, 1.0, 0.75, 0.25, -0.75, -0.25, 0.25, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, -1.0, -0.5, 0.0, 1.0, 0.0, -0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -1.0, 0.25, -0.25, 0.75, -0.25, 0.5, ]);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    const array11 = new Float32Array([0.0, 0.25, -0.25, -0.75, 0.75, -0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, -1.0, 0.75, 0.5, -1.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, 0.75, 0.25, -1.0, -1.0, 0.25, 0.25, -0.75, 0.5, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, 1.0, 0.0, 0.75, 0.75, -0.75, -0.75, -1.0, -0.75, 0.5, 0.0, 0.0, 1.0, -0.25, 1.0, -0.75, 0.75, -0.25, 0.25, 1.0, 0.5, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -1.0, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.5, -0.75, -0.25, 0.5, 0.0, 0.75, -0.75, -1.0, 0.5, -0.25, 0.75, 0.25, 1.0, -1.0, -0.25, 0.0, 1.0, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_buffer005 = command_encoder005.finish();
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    query101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder007.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer106, 0, array10, 0, array10.length);
    
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    command_encoder007.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device00.pushErrorScope("internal");
    command_encoder002.popDebugGroup()
    
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query105.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query201.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer106, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    query201.destroy()
    
    
    
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    
    query102.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query200.destroy()
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    query201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    command_encoder200.clearBuffer(buffer200);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer008 = command_encoder008.finish();
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    command_encoder007.insertDebugMarker("mymarker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const array12 = new Float32Array([-0.5, -0.75, -0.25, 0.25, 1.0, -1.0, -0.5, -0.5, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.0, -0.25, -0.5, -1.0, 1.0, -1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 0.75, 0.75, 0.75, 0.0, -0.25, -0.5, 0.25, -0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -0.75, 0.0, 0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.5, 0.75, 0.75, -1.0, 1.0, 1.0, 0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.25, -0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 0.5, 0.0, 0.5, 1.0, 0.25, 0.25, 0.25, 1.0, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -0.5, 1.0, -0.75, -0.75, ]);
    
    query200.destroy()
    query100.destroy()
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    query201.destroy()
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query102.destroy()
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    query101.destroy()
    
    device00.pushErrorScope("validation");
    command_encoder200.clearBuffer(buffer200);
    command_encoder200.insertDebugMarker("mymarker");
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query201.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.clearBuffer(buffer200);
    
    
    
    const command_buffer102 = command_encoder102.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    query100.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    
    command_encoder200.clearBuffer(buffer200);
    command_encoder007.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query200.destroy()
    query105.destroy()
    command_encoder201.clearBuffer(buffer200);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer106, 0, array10, 0, array10.length);
    command_encoder007.popDebugGroup()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    query104.destroy()
    device00.queue.writeBuffer(buffer003, 0, array10, 0, array10.length);
    query102.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    command_encoder202.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    
    const command_buffer202 = command_encoder202.finish();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer106, 0, array11, 0, array11.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query104.destroy()
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer106, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    query105.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    
    query104.destroy()
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    query400.destroy()
    device30.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    query105.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    const array13 = new Float32Array([0.25, -1.0, 0.75, -0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -0.75, 0.75, -1.0, 0.25, 0.75, 0.5, 0.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, -0.5, -1.0, 0.5, -0.25, 1.0, -0.5, 0.5, -0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, 0.0, 0.75, -1.0, -0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 1.0, -0.25, -0.5, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.insertDebugMarker("mymarker");
    const array14 = new Float32Array([-0.25, 0.5, 0.25, -0.25, -0.25, -0.25, -1.0, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, 0.25, -1.0, -0.5, -1.0, 1.0, 1.0, -0.75, 1.0, -0.25, 0.5, 0.5, -0.5, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.25, -0.25, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 0.75, 0.5, -0.25, -0.25, 0.25, -0.75, -0.75, -1.0, -1.0, -0.5, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, 0.5, 0.75, 0.75, 0.75, -0.25, -0.5, 0.25, 0.0, -0.75, -0.25, 0.0, 0.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, -0.25, 0.75, 1.0, -0.5, ]);
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    device10.queue.writeBuffer(buffer106, 0, array14, 0, array14.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    compute_pass_encoder0060.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    command_encoder009.clearBuffer(buffer003);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    
    command_encoder009.pushDebugGroup("mygroupmarker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0030.popDebugGroup()
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer200, 0, array14, 0, array14.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    compute_pass_encoder0060.popDebugGroup()
    
    device10.pushErrorScope("validation");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    
    
    device00.queue.writeBuffer(buffer003, 0, array14, 0, array14.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    command_encoder009.clearBuffer(buffer003);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device10.queue.submit([command_buffer100, ]);
    
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    query300.destroy()
    
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array12, 0, array12.length);
    
    command_encoder009.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer009 = command_encoder009.finish();
    device20.queue.submit([command_buffer204, ]);
}