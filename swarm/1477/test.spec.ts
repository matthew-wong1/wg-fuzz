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
    
    const array0 = new Float32Array([1.0, -1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, 0.0, 0.25, -1.0, -0.25, -1.0, 0.5, -0.5, 0.5, -0.5, -0.75, 0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.25, 0.5, -1.0, -0.5, -0.25, 1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.0, 1.0, -0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 1.0, -0.25, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, -0.25, -0.25, -0.5, ]);
    const array1 = new Float32Array([-0.25, 0.75, -0.5, 1.0, -0.5, 1.0, 0.75, 0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.0, 0.0, -0.75, 1.0, -0.5, 0.75, 0.75, 0.0, -1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.5, 0.5, 0.0, 0.5, 0.25, 0.25, -1.0, -0.75, -0.25, -0.25, -0.5, -0.75, 0.75, -0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.25, 0.5, 0.0, -0.75, 0.25, -0.5, 0.25, -0.75, -0.5, 0.5, -0.75, -0.25, -0.75, -0.25, ]);
    const array2 = new Float32Array([-1.0, 0.25, 1.0, -1.0, 0.25, -0.75, -0.5, -1.0, 0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, -0.25, -0.25, 0.5, 1.0, 0.25, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, -0.25, -0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, -0.5, 0.0, 1.0, 0.5, 0.25, 0.0, -0.75, 0.25, 0.0, -0.25, -1.0, -1.0, 0.5, -0.75, 1.0, -1.0, 0.25, 0.5, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.75, -0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 0.25, -0.25, 0.25, -0.5, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.5, 0.5, -0.75, -1.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 0.25, -0.5, -0.75, 0.5, -1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, -1.0, -0.5, -1.0, -1.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.75, -0.75, 0.0, -0.75, -0.25, 0.0, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, 0.75, -1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.75, -0.25, 1.0, 0.25, -0.5, 0.75, -0.5, -0.5, -0.5, 0.25, -0.75, -0.75, -1.0, 0.5, ]);
    
    const array4 = new Float32Array([1.0, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, 0.0, -1.0, 0.0, 1.0, -1.0, 0.25, 0.25, 0.75, 0.25, -0.25, -0.25, -1.0, -0.25, -0.75, -1.0, 0.25, -0.25, -0.5, 0.75, 1.0, -1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 0.75, 0.75, -0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, 1.0, -1.0, -0.5, 0.25, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, -0.75, 1.0, -0.5, 0.75, 0.75, -0.25, 0.25, 0.25, 0.0, -0.25, -0.5, 0.75, ]);
    const array5 = new Float32Array([-0.5, -0.75, -0.75, -1.0, 0.25, 1.0, 0.0, 0.75, -0.75, 0.0, 0.75, -1.0, -0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, 0.75, 0.75, 0.5, 0.5, -0.25, -0.5, 0.75, -0.75, 0.5, -0.25, 0.25, 0.0, -0.25, -0.75, 0.5, -0.25, -1.0, -0.75, -0.5, 0.75, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, 0.5, 0.5, 1.0, -0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 0.5, 0.5, 0.5, 1.0, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.75, -0.25, -0.5, 0.75, 0.25, 0.25, 0.0, ]);
    const array6 = new Float32Array([-0.25, -0.5, 0.75, 0.0, 1.0, -0.25, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.5, 0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, 0.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, -0.5, 1.0, 1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.0, -0.5, -0.25, 0.0, -0.5, -0.75, -0.75, -0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.25, -1.0, -0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 0.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -0.75, 0.0, -0.25, 0.0, -1.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.75, -1.0, 1.0, -0.75, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, ]);
    
    const array7 = new Float32Array([-0.5, 0.5, -0.75, 0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 0.5, 1.0, 0.25, 0.0, 1.0, -0.75, 1.0, -0.75, 0.0, 0.75, 0.75, 0.75, 0.25, 1.0, -0.25, -1.0, 0.5, -1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.75, 1.0, 0.25, -0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, -0.25, 0.75, 0.75, -0.25, 0.25, 0.5, 1.0, -1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, 0.75, -1.0, -1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query101.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const array8 = new Float32Array([-0.75, -0.75, -0.75, 1.0, -0.5, 0.0, -1.0, -0.75, 0.75, 1.0, 1.0, 0.5, 0.75, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.5, -0.25, -0.25, 0.0, -1.0, 0.0, -0.75, 0.75, -1.0, -1.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 1.0, 0.0, 0.5, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, 0.0, 0.5, -1.0, -1.0, 0.5, 1.0, -0.5, 0.25, -1.0, -0.25, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, 1.0, -0.5, -0.25, 0.5, -1.0, 0.75, -0.25, -1.0, -0.75, -0.75, 0.5, 0.75, 0.0, 0.5, 0.75, -0.5, -0.25, 1.0, -0.5, 0.0, 0.0, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query102.destroy()
    query101.destroy()
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    buffer100.destroy()
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query101.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query102.destroy()
    query103.destroy()
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    query105.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    query103.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.0, -0.75, 1.0, -1.0, -1.0, -1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.75, 1.0, 0.25, -1.0, 0.5, 0.75, 0.25, 1.0, 0.75, -0.25, -0.5, 0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -1.0, 0.25, 1.0, 0.25, -0.5, 0.5, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 1.0, 0.75, 0.5, 0.5, 0.5, -0.75, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 1.0, 0.0, 0.5, -1.0, -1.0, 1.0, 0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 1.0, 1.0, 0.0, 0.75, -0.75, ]);
    render_bundle_encoder100.popDebugGroup();
    query101.destroy()
    
    
    const command_buffer102 = command_encoder102.finish();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    device00.pushErrorScope("validation");
    query100.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    query101.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder103.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_bundle_encoder103.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1001.popDebugGroup()
    query101.destroy()
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    
    query105.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.pushErrorScope("out-of-memory");
    
    query100.destroy()
    command_encoder104.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer103,
        0
    )
    query101.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    command_encoder104.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.insertDebugMarker("mymarker");
    query105.destroy()
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    const array10 = new Float32Array([-1.0, 0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -1.0, 0.25, 0.0, 0.75, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.5, -0.25, 0.0, -0.75, 0.25, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.25, 0.0, -1.0, 1.0, -0.25, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, -1.0, 0.25, ]);
    
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const command_buffer104 = command_encoder104.finish();
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    command_encoder103.clearBuffer(buffer106);
    buffer106.destroy()
    query103.destroy()
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    buffer104.destroy()
    render_bundle_encoder103.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder103.clearBuffer(buffer102);
    buffer103.destroy()
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    const array11 = new Float32Array([0.75, 0.5, -0.75, -0.25, -0.5, 0.0, 0.5, 1.0, -0.75, -0.25, 0.75, 0.25, 0.0, 0.0, 0.75, 0.75, -1.0, 0.5, 1.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, -0.75, 0.25, -0.75, -0.25, -0.25, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 1.0, -1.0, 0.0, 0.75, -0.25, 0.0, -1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 1.0, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25, -1.0, -0.5, -1.0, -1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, -1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, 0.25, 0.25, ]);
    
    command_encoder105.resolveQuerySet(
        query106,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    buffer102.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query107,
        0,
        32,
        buffer102,
        0
    )
    query100.destroy()
    const array12 = new Float32Array([0.5, -0.75, 0.0, -1.0, -0.5, 0.5, -0.25, 0.5, -0.5, 0.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, -0.25, -0.75, 0.25, 0.5, -1.0, 0.75, -0.25, 0.25, 0.75, -0.75, 1.0, -1.0, 0.0, -1.0, 0.75, 0.0, 0.0, 0.25, 0.5, 0.25, -0.25, -0.5, 0.75, 0.75, -0.5, 0.0, 0.75, 0.25, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, 0.25, -0.5, 0.0, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, 0.5, 0.5, 0.25, 0.75, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -0.5, 0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.25, 0.5, ]);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder103.resolveQuerySet(
        query106,
        0,
        32,
        buffer103,
        0
    )
    
    const command_buffer103 = command_encoder103.finish();
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer106,
        0
    )
    compute_pass_encoder1001.popDebugGroup()
    const array13 = new Float32Array([0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 0.25, 0.25, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 0.75, 0.75, 0.0, 0.0, 0.25, -0.75, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -1.0, -1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, 1.0, -0.75, 0.75, -1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.75, 0.0, -0.5, 0.0, -1.0, 1.0, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.5, -0.25, 1.0, -1.0, 0.75, 0.75, 0.0, 0.25, 1.0, 0.5, 0.25, 0.0, 0.0, -1.0, 0.25, ]);
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer106,
        0
    )
    command_encoder100.resolveQuerySet(
        query107,
        0,
        32,
        buffer104,
        0
    )
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    const command_buffer105 = command_encoder105.finish();
    query104.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer200.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer103,
        0
    )
    const command_buffer200 = command_encoder200.finish();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query300.destroy()
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device20.pushErrorScope("internal");
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    device30.destroy();
    query101.destroy()
    
    device20.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer100,
        0
    )
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    query104.destroy()
    query104.destroy()
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer105,
        0
    )
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer101,
        0
    )
    command_encoder106.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.pushErrorScope("validation");
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    buffer107.destroy()
    
    query107.destroy()
    device20.destroy();
    render_bundle_encoder103.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    query100.destroy()
    
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer103,
        0
    )
    command_encoder106.clearBuffer(buffer105);
    command_encoder106.insertDebugMarker("mymarker");
    buffer105.destroy()
    const array14 = new Float32Array([-0.75, 0.0, -0.75, -0.5, -0.75, 0.25, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 0.75, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -1.0, 0.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.0, 0.0, -0.25, 0.25, 1.0, 0.25, -0.25, -0.25, 0.0, -0.75, 0.25, -1.0, 0.0, 0.0, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.0, -0.75, 1.0, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, 0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 0.75, -0.25, -1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 0.75, -0.75, -0.75, 0.5, 0.75, 0.5, -0.75, ]);
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    query100.destroy()
    query105.destroy()
    
    command_encoder106.clearBuffer(buffer100);
    command_encoder106.resolveQuerySet(
        query109,
        0,
        32,
        buffer107,
        0
    )
    
    query103.destroy()
    
    query106.destroy()
    
    
    render_bundle_encoder103.popDebugGroup();
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    query103.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    query102.destroy()
    device10.queue.writeBuffer(buffer106, 0, array11, 0, array11.length);
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer106,
        0
    )
    query105.destroy()
    command_encoder100.resolveQuerySet(
        query107,
        0,
        32,
        buffer104,
        0
    )
    
    
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer107,
        0
    )
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1001.popDebugGroup()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query109.destroy()
    command_encoder107.resolveQuerySet(
        query107,
        0,
        32,
        buffer107,
        0
    )
    command_encoder100.resolveQuerySet(
        query108,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer104,
        0
    )
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder107.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    query106.destroy()
    command_encoder106.resolveQuerySet(
        query107,
        0,
        32,
        buffer107,
        0
    )
    buffer106.destroy()
    query107.destroy()
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query109.destroy()
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    command_encoder108.resolveQuerySet(
        query109,
        0,
        32,
        buffer103,
        0
    )
    
    
    command_encoder108.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    command_encoder108.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    
    query104.destroy()
    const array15 = new Float32Array([-1.0, -0.25, 0.75, -1.0, -1.0, 0.75, -1.0, -0.25, 0.5, 0.0, -0.5, -1.0, -0.25, 0.5, -0.5, -0.5, -0.5, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, -0.25, -0.75, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, -0.25, 0.75, -0.25, 0.75, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, 0.5, -1.0, -0.75, 0.5, -1.0, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.5, 0.0, -1.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.75, 0.75, -1.0, -1.0, 0.25, 0.0, -1.0, 1.0, -0.5, 0.0, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, -0.5, ]);
    
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer108,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder107.resolveQuerySet(
        query109,
        0,
        32,
        buffer106,
        0
    )
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer107,
        0
    )
    
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer100,
        0
    )
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    command_encoder108.resolveQuerySet(
        query106,
        0,
        32,
        buffer107,
        0
    )
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    command_encoder106.insertDebugMarker("mymarker");
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    const array16 = new Float32Array([1.0, 0.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, 0.75, -0.75, 0.75, -0.5, -1.0, 0.0, 0.0, -0.75, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 0.0, 0.0, 0.75, 1.0, -0.75, -1.0, 0.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.5, -0.5, 0.25, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, -0.75, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.0, 1.0, 0.5, 0.5, 0.0, -1.0, 0.75, 1.0, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.25, 0.25, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, -0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer109.destroy()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    command_encoder107.resolveQuerySet(
        query109,
        0,
        32,
        buffer101,
        0
    )
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer1010,
        0
    )
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query106.destroy()
    
    command_encoder107.clearBuffer(buffer108);
    command_encoder108.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer107,
        0
    )
    query100.destroy()
    query102.destroy()
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query100.destroy()
    query301.destroy()
    render_bundle_encoder103.popDebugGroup();
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    query106.destroy()
    query102.destroy()
    command_encoder108.resolveQuerySet(
        query107,
        0,
        32,
        buffer106,
        0
    )
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const command_buffer108 = command_encoder108.finish();
    command_encoder106.resolveQuerySet(
        query107,
        0,
        32,
        buffer107,
        0
    )
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    command_encoder106.resolveQuerySet(
        query109,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer105,
        0
    )
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    
    query102.destroy()
    command_encoder106.resolveQuerySet(
        query1010,
        0,
        32,
        buffer108,
        0
    )
    const command_buffer107 = command_encoder107.finish();
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query109,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder106.resolveQuerySet(
        query1010,
        0,
        32,
        buffer105,
        0
    )
    const command_buffer001 = command_encoder001.finish();
    device10.queue.writeBuffer(buffer1010, 0, array3, 0, array3.length);
    command_encoder106.resolveQuerySet(
        query109,
        0,
        32,
        buffer107,
        0
    )
    query105.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    query104.destroy()
    buffer1010.destroy()
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    query105.destroy()
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query107,
        0,
        32,
        buffer104,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer103,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query108,
        0,
        32,
        buffer100,
        0
    )
    command_encoder109.resolveQuerySet(
        query108,
        0,
        32,
        buffer106,
        0
    )
    command_encoder109.resolveQuerySet(
        query109,
        0,
        32,
        buffer107,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    query107.destroy()
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    query105.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer109 = command_encoder109.finish();
}