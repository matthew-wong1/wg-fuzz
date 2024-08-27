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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer101.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_buffer100 = command_encoder100.finish();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([command_buffer100, ]);
    const array0 = new Float32Array([0.0, -0.5, -0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.5, 0.0, 0.25, 0.0, -0.5, -0.25, -0.75, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.75, -0.5, -0.75, -1.0, -0.5, 0.5, 1.0, 0.75, -1.0, 0.0, 0.25, 0.0, -0.5, -0.5, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.75, 0.0, -1.0, 0.25, -0.5, -0.5, 0.25, -1.0, -1.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, 1.0, 0.5, 0.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.75, -0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, -0.25, 0.75, ]);
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_buffer001 = command_encoder001.finish();
    const array1 = new Float32Array([0.5, -0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.0, -1.0, -1.0, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, -1.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, -0.75, -0.5, -0.75, 0.0, 0.5, -0.75, 0.25, -0.75, 0.25, -0.25, 1.0, 0.25, -0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -1.0, 0.75, -1.0, 0.5, -0.25, 0.25, 1.0, 0.75, -0.25, -0.25, -0.25, -0.5, 1.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.75, -0.5, -0.25, 0.75, -1.0, 0.25, -0.5, 0.0, 0.25, 0.25, 0.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.5, 1.0, 0.75, 0.75, -1.0, 1.0, -0.5, -1.0, 0.25, -1.0, 0.25, ]);
    buffer102.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    query200.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array2 = new Float32Array([0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.75, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, -0.5, 1.0, -0.75, -0.25, -0.75, 1.0, 1.0, 0.25, 0.25, -0.5, -0.25, 0.0, -0.75, -0.25, 0.75, 0.0, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.5, -0.5, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, -0.25, -0.25, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 1.0, 1.0, 0.0, -0.5, 0.0, -0.5, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, 1.0, 0.5, -0.5, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array3 = new Float32Array([0.0, -1.0, -0.75, -0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 1.0, 0.25, -0.5, 0.5, -0.25, -0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 1.0, 1.0, 0.75, -0.5, 0.75, 0.25, 0.25, 1.0, 1.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 1.0, 0.0, 0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, 0.0, 0.5, -0.5, 0.0, -0.75, 0.0, -0.25, 0.0, 0.75, 0.25, 0.25, ]);
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.5, -0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, -0.75, -0.5, 0.5, -0.75, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, 0.0, -0.75, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, 0.25, 0.0, -0.75, -1.0, -0.25, 0.25, 0.75, 0.5, -0.75, 0.75, -1.0, -0.5, -0.75, -0.75, 0.5, 0.0, 0.25, -0.25, 0.75, 1.0, 0.5, -0.25, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 0.0, -0.75, -1.0, -0.5, -0.75, 0.0, 0.25, 0.5, 0.75, 1.0, 0.0, 1.0, -0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.75, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const array5 = new Float32Array([-1.0, 0.5, -0.25, -0.75, -1.0, -0.5, -0.75, -1.0, -0.5, 0.25, 0.75, -0.5, 0.5, 0.0, -0.25, 0.25, -0.25, 0.0, -0.75, 0.0, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 1.0, -1.0, 0.5, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, 0.0, 0.75, 0.5, 0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 0.75, 0.5, -0.5, 0.5, -0.75, 0.0, 0.25, -0.25, 0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 0.5, 0.0, -1.0, 0.0, -0.5, -0.5, -0.25, 1.0, -0.75, -0.25, -0.25, -0.5, -0.25, -0.75, 0.5, 0.0, 1.0, -1.0, 1.0, -0.25, 0.5, -0.25, 0.5, 1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 1.0, 0.0, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, 0.75, -0.5, -0.25, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, 1.0, -0.5, 1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, -0.5, 0.25, 0.75, 0.5, -0.25, -0.75, -0.5, -0.75, -0.5, -0.5, -0.5, 1.0, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, 0.25, -0.5, 0.0, -0.25, -0.5, -0.5, 1.0, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, ]);
    command_encoder005.pushDebugGroup("mygroupmarker")
    query000.destroy()
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder003.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query200.destroy()
    command_encoder003.popDebugGroup()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_buffer004 = command_encoder004.finish();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    buffer000.destroy()
    device00.queue.submit([command_buffer001, command_buffer004, ]);
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
    command_encoder000.insertDebugMarker("mymarker");
    
    const array7 = new Float32Array([-1.0, 1.0, 1.0, 1.0, -0.25, -0.5, -0.5, -0.5, -1.0, 0.0, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.5, 0.5, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, -0.25, -0.5, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, 0.25, -0.75, 0.5, 0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, -0.5, 0.5, 0.5, 0.25, 0.75, 0.0, 0.5, 0.25, -0.5, -0.25, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.0, -0.75, 0.75, 0.5, -0.25, -0.5, 0.75, 1.0, 0.25, -0.75, -0.25, ]);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer300 = command_encoder300.finish();
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    command_encoder000.popDebugGroup()
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const command_buffer002 = command_encoder002.finish();
    
    
    buffer200.destroy()
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
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
    command_encoder006.insertDebugMarker("mymarker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device30.queue.submit([command_buffer300, ]);
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
    command_encoder000.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder300.popDebugGroup();
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
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder006.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query200.destroy()
    query000.destroy()
    const command_buffer003 = command_encoder003.finish();
    query200.destroy()
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.popDebugGroup();
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    query100.destroy()
    const command_buffer301 = command_encoder301.finish();
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder101.popDebugGroup()
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer103.destroy()
    command_encoder005.popDebugGroup()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer104.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer301.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    query200.destroy()
    const array8 = new Float32Array([-0.5, -1.0, 0.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 1.0, 0.75, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, -1.0, -1.0, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, 0.75, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.5, -0.75, 0.0, -0.25, -1.0, 0.5, 0.5, -0.5, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -0.5, -0.5, -0.75, -0.75, -0.5, 0.5, -0.75, -0.25, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 0.75, -0.5, 1.0, 1.0, ]);
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    query200.destroy()
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder006.clearBuffer(buffer001);
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
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
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    query300.destroy()
    query102.destroy()
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder005.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
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
    render_bundle_encoder301.insertDebugMarker("marker");
    query000.destroy()
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder006.popDebugGroup()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
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
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer001.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    query202.destroy()
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    query102.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    query201.destroy()
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_buffer101 = command_encoder101.finish();
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query101.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer006 = command_encoder006.finish();
    query302.destroy()
    
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer301, ]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer302 = command_encoder302.finish();
    command_encoder102.clearBuffer(buffer105);
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    
    const array9 = new Float32Array([0.75, 0.25, -0.25, 0.25, -0.25, -0.5, -1.0, -0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.5, -1.0, 0.75, -1.0, 0.75, 0.5, -1.0, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, -0.5, -0.5, -0.25, 0.75, 0.25, -0.25, -1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 0.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 0.75, -0.25, 0.5, -0.25, 1.0, 0.5, 0.5, -0.25, -0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 0.75, -0.75, -0.5, -0.75, 1.0, -0.5, 0.75, -0.75, -0.5, -1.0, -1.0, 0.25, 0.75, 0.25, -1.0, 0.5, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -0.75, -0.25, 0.75, -0.5, 0.5, 0.5, ]);
    command_encoder104.clearBuffer(buffer105);
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder005.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    
    buffer300.destroy()
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    query000.destroy()
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.insertDebugMarker("mymarker");
    query000.destroy()
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer303.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer401.destroy()
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
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    query302.destroy()
    const command_buffer105 = command_encoder105.finish();
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query400.destroy()
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer400.destroy()
    command_encoder005.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder005.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    query400.destroy()
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    command_encoder005.insertDebugMarker("mymarker");
    const command_buffer500 = command_encoder500.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder008.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    query100.destroy()
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder007.pushDebugGroup("mygroupmarker")
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder0010.insertDebugMarker("mymarker");
    query000.destroy()
    query302.destroy()
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    query400.destroy()
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder005.pushDebugGroup("mygroupmarker")
    command_encoder103.clearBuffer(buffer105);
    command_encoder104.insertDebugMarker("mymarker");
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.clearBuffer(buffer105);
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder103.popDebugGroup()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer201.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device50.queue.submit([command_buffer500, ]);
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_bundle_encoder101.popDebugGroup();
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder0011.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    query101.destroy()
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.clearBuffer(buffer105);
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder0010.insertDebugMarker("mymarker");
    command_encoder303.insertDebugMarker("mymarker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const command_buffer303 = command_encoder303.finish();
    command_encoder104.popDebugGroup()
    command_encoder102.popDebugGroup()
    command_encoder400.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    const command_buffer008 = command_encoder008.finish();
    command_encoder007.popDebugGroup()
    const command_buffer0010 = command_encoder0010.finish();
    const command_buffer104 = command_encoder104.finish();
    device00.queue.submit([command_buffer006, command_buffer008, command_buffer0010, ]);
    const command_buffer007 = command_encoder007.finish();
    const command_buffer009 = command_encoder009.finish();
    command_encoder005.popDebugGroup()
    const command_buffer0011 = command_encoder0011.finish();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, ]);
    const command_buffer106 = command_encoder106.finish();
    device10.queue.submit([command_buffer106, ]);
    const command_buffer005 = command_encoder005.finish();
    device30.queue.submit([command_buffer303, ]);
    const command_buffer400 = command_encoder400.finish();
    device00.queue.submit([command_buffer005, command_buffer007, command_buffer009, command_buffer0011, ]);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([command_buffer105, ]);
}