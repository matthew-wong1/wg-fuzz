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
    const array0 = new Float32Array([0.5, 0.25, 0.75, 0.75, -0.75, 0.5, 1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 1.0, -1.0, 0.75, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, -1.0, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.25, 0.0, 0.75, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, 0.25, -1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -0.25, 1.0, 0.0, 0.0, 0.75, -0.75, 1.0, 0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 0.5, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, 0.75, -0.25, 0.25, 1.0, 1.0, -1.0, 0.25, 0.25, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, -1.0, ]);
    const array1 = new Float32Array([0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -0.75, 0.0, 0.25, 0.5, -0.75, 1.0, -1.0, 0.75, 0.0, -1.0, -0.75, 0.25, 0.25, 0.25, 0.0, 0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.5, 0.75, 0.25, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.5, 0.75, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.75, 1.0, 0.75, 1.0, 0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, -0.75, 1.0, 0.25, 1.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.75, 0.25, -0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -0.25, 1.0, 0.5, -0.25, 0.75, 1.0, -0.5, -1.0, ]);
    const array2 = new Float32Array([0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.75, -0.5, 0.0, -1.0, -1.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.5, -0.5, 0.5, 0.0, -0.75, 0.25, -0.75, 0.25, -0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.25, -0.75, 0.75, -0.5, -1.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, 0.75, -0.75, 1.0, 0.75, 1.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, 0.0, -0.5, -0.5, -0.5, 0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 0.0, 1.0, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.0, ]);
    const array3 = new Float32Array([0.25, 0.25, 1.0, -0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, -0.75, -0.25, -0.75, -0.25, -0.5, 0.75, 0.0, -0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, 0.25, 1.0, 0.75, 0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.0, -0.25, -0.75, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -0.75, 0.75, 0.5, -0.75, 0.5, -0.25, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, 1.0, 0.5, -0.75, -1.0, 0.25, 0.25, 0.0, -1.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer000 = command_encoder000.finish();
    command_encoder001.popDebugGroup()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer001 = command_encoder001.finish();
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.25, 0.0, -1.0, 0.25, 1.0, 0.75, 0.75, 1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.0, 1.0, -0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 0.5, 0.25, -0.25, 1.0, 0.0, -0.75, 0.25, 1.0, -0.25, -0.25, -1.0, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.75, 0.25, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, 0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -0.75, -0.75, -1.0, -0.5, -1.0, 0.25, 0.25, -0.5, 1.0, -0.25, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, 0.25, 0.25, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, 0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, 0.0, -0.25, 0.0, 1.0, 0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([-0.5, -0.75, -0.75, -1.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, 0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.75, 0.5, 0.5, -0.5, 0.75, -1.0, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, -0.5, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.0, 1.0, 0.0, -0.25, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, -1.0, 0.75, 0.0, -0.5, 0.75, -0.75, -1.0, -1.0, -0.25, 0.5, 1.0, 0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 1.0, 0.0, -0.25, 0.0, -0.5, -0.5, -0.75, -0.5, -0.75, 1.0, -0.5, 0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, -1.0, -0.5, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, -0.25, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query300.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query100.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    const array6 = new Float32Array([-0.5, 0.75, -0.5, -0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, -0.5, -1.0, 0.5, -0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.75, -0.5, 0.75, 0.0, -0.25, 0.0, 0.0, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.75, -0.75, -0.25, 0.75, 0.25, -0.25, -0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, 0.5, 1.0, 0.25, -0.75, -0.25, 1.0, -0.75, -0.25, -0.25, 0.5, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, -0.75, 0.0, -1.0, -0.5, -0.75, 0.0, -0.5, -0.75, -1.0, -0.5, 0.5, -0.5, 0.5, 0.0, -0.25, -0.5, -1.0, 0.75, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 0.5, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device50.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    query000.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query000.destroy()
    query100.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
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
    const array7 = new Float32Array([-0.5, 1.0, 0.25, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.5, -0.5, -0.75, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -1.0, 0.5, 1.0, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.75, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, 1.0, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, 1.0, -0.5, -0.75, 0.0, -0.25, -0.25, 0.75, -0.25, 0.5, 0.25, -1.0, 0.25, -1.0, 0.5, -1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, 0.0, 1.0, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query303.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query101.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.destroy();
    const command_buffer401 = command_encoder401.finish();
    query302.destroy()
    query000.destroy()
    query301.destroy()
    
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    query300.destroy()
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    query201.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query200.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query303.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query700.destroy()
    const command_buffer003 = command_encoder003.finish();
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
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
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    query302.destroy()
    const array8 = new Float32Array([-0.75, -0.75, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, -0.75, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, 0.5, -0.5, -1.0, -1.0, 0.5, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.75, -0.25, -0.5, -0.25, -0.75, 0.25, -0.5, -0.75, -0.25, -0.5, -0.25, 0.25, -1.0, 0.25, -1.0, -0.25, 1.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.0, -0.75, -0.5, -1.0, 1.0, 0.0, 0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -0.5, 0.0, 0.0, 0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 0.75, 0.25, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 0.5, 0.5, -0.25, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.0, 1.0, 0.75, 0.0, 0.0, 0.0, ]);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
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
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query400.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder403.pushDebugGroup("mygroupmarker")
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device60.destroy();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    query001.destroy()
    
    query701.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    query700.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder403.popDebugGroup()
    query303.destroy()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query301.destroy()
    command_encoder403.clearBuffer(buffer402);
    query302.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array9 = new Float32Array([-0.75, 0.5, -1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.75, 0.25, 0.75, 0.0, -0.75, -0.75, 1.0, -0.75, -0.25, 0.5, 0.75, -0.75, -1.0, 0.25, -1.0, -0.5, 0.5, -0.75, -0.75, 0.5, 0.5, -0.75, -0.75, 0.5, -1.0, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.75, 0.75, -0.25, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -0.5, ]);
    
    query001.destroy()
    
    query201.destroy()
    query001.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query302.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder006.clearBuffer(buffer002);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    const command_buffer005 = command_encoder005.finish();
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder403.clearBuffer(buffer402);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    query300.destroy()
    query200.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    query400.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query400.destroy()
    command_encoder006.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder006.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    query304.destroy()
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    query304.destroy()
    query701.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    query702.destroy()
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    query701.destroy()
    query304.destroy()
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const command_buffer403 = command_encoder403.finish();
    
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query402.destroy()
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
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    query702.destroy()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    query700.destroy()
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query301.destroy()
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    query702.destroy()
    
    query400.destroy()
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout702]
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query403.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    query401.destroy()
    const command_buffer700 = command_encoder700.finish();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    query701.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    command_encoder404.clearBuffer(buffer402);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    
    
    
    device80.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    query301.destroy()
    const array10 = new Float32Array([-0.5, 0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, -1.0, 0.0, 0.75, -0.25, -1.0, -0.75, 0.25, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, -0.5, -1.0, -1.0, -0.5, 0.25, 0.5, -1.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -0.25, 0.0, 0.0, 0.75, 1.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, 1.0, 0.25, 0.25, 0.0, 0.25, 0.0, -1.0, 0.5, -0.25, 1.0, 0.25, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, -1.0, 1.0, -1.0, 0.75, -0.75, -0.25, 0.75, 0.5, -0.5, 0.75, -1.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.25, 0.75, 0.5, -0.5, 1.0, 1.0, -0.5, 1.0, 0.75, -0.5, -0.5, -0.75, 0.0, -0.5, 1.0, 0.25, -0.75, ]);
    query303.destroy()
    query001.destroy()
    command_encoder007.clearBuffer(buffer002);
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    query300.destroy()
    
    
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    query703.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array11 = new Float32Array([0.0, -1.0, 0.75, -0.75, -0.75, -1.0, -1.0, 0.75, -0.25, -1.0, -0.75, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -0.75, 0.25, -0.25, 0.75, 1.0, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, -0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -0.75, -0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.5, -0.5, 1.0, 0.0, -0.25, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, 1.0, 0.5, -0.25, 0.5, 0.0, -0.75, 0.0, 1.0, -0.25, -0.75, 0.0, 0.25, -1.0, 0.25, 0.25, 0.5, -0.75, -0.75, 0.75, 0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, -0.75, 0.25, 0.5, -1.0, 0.25, 0.75, 0.0, 0.25, -0.25, 0.75, -0.25, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, ]);
    
    
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query403.destroy()
    query302.destroy()
    
    
    device70.queue.writeBuffer(buffer704, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    query701.destroy()
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    
    device70.queue.writeBuffer(buffer704, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query201.destroy()
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const command_buffer404 = command_encoder404.finish();
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    device90.destroy();
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device70.queue.writeBuffer(buffer704, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    query701.destroy()
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    
    command_encoder703.copyBufferToBuffer(
        buffer700,
        0,
        buffer704,
        0,
        400
    );
    
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    device70.queue.writeBuffer(buffer704, 0, array9, 0, array9.length);
    
    query302.destroy()
    const array12 = new Float32Array([-0.25, -0.75, 0.0, -0.5, 1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.5, -1.0, -0.25, 0.25, -0.5, 1.0, 0.75, 0.25, 1.0, -0.25, 0.5, 0.0, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, 1.0, -0.25, -1.0, -0.5, 0.25, 1.0, 0.0, 0.75, 0.25, -0.5, -0.25, 0.0, -0.5, -0.75, 0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 0.0, -0.5, 0.0, 0.5, 0.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.25, -0.75, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 0.75, -0.75, 0.5, -0.5, -0.5, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 0.5, 0.5, 0.25, ]);
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
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
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    query202.destroy()
    device20.queue.writeBuffer(buffer207, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    const array13 = new Float32Array([-0.25, 0.25, 0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.25, 0.5, 1.0, -0.5, 0.5, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, -0.75, 0.5, -0.25, 1.0, 0.75, 0.75, 1.0, 0.5, -0.25, -0.5, 0.5, -0.25, -0.75, -1.0, -0.75, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 1.0, 0.0, -0.75, 0.75, -0.25, 0.0, 1.0, 0.25, -0.75, -1.0, -1.0, -0.25, -0.5, 0.25, -0.25, 0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, -1.0, 0.0, -0.25, 1.0, 0.5, 0.75, 0.5, -0.25, 0.0, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.0, -1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, -1.0, -0.5, 0.75, 0.0, 0.25, -0.75, 0.75, -0.5, ]);
    device70.queue.writeBuffer(buffer704, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer207, 0, array12, 0, array12.length);
    query703.destroy()
    device70.queue.writeBuffer(buffer704, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer206, 0, array13, 0, array13.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    query200.destroy()
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.queue.writeBuffer(buffer704, 0, array12, 0, array12.length);
    device70.queue.writeBuffer(buffer704, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    const command_buffer704 = command_encoder704.finish();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    const command_buffer703 = command_encoder703.finish();
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    
    
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer002, 0, array13, 0, array13.length);
    const command_buffer008 = command_encoder008.finish();
}