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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder000.popDebugGroup();
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
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
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([0.25, 1.0, 0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 1.0, 0.75, -0.5, 0.75, -0.75, 1.0, -0.75, 0.5, -0.75, 1.0, -0.75, -1.0, -0.25, -1.0, -1.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.5, 0.75, -0.75, 0.0, 0.0, -1.0, 0.25, -1.0, 0.0, 0.25, 1.0, -1.0, -0.5, 1.0, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, -0.25, -0.75, 0.0, 0.25, -0.5, -0.5, -0.25, 0.0, 1.0, 0.0, 1.0, -0.75, 0.0, -0.75, 0.0, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, -1.0, -0.5, -0.75, -0.5, -0.25, -0.75, -0.25, 1.0, -1.0, -0.25, 0.75, -0.25, 0.25, 1.0, 0.0, 0.75, 0.0, 0.25, -0.75, -0.5, -0.25, 0.75, 0.5, ]);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    device00.pushErrorScope("internal");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array1 = new Float32Array([-0.5, -0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.25, 0.75, 0.25, -0.5, -0.75, 0.0, -0.75, -0.75, -0.25, -0.75, 0.25, 0.75, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.0, 0.75, -0.25, -0.25, 0.0, -1.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.25, 1.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 1.0, 0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.0, 1.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, -0.5, 0.25, -1.0, -1.0, -0.25, 0.5, 0.5, 0.75, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const array2 = new Float32Array([0.0, -1.0, -0.5, 0.75, 0.5, 1.0, 0.5, 1.0, 0.0, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, -0.5, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 0.0, -0.25, -0.25, -0.25, 0.25, 0.5, -0.25, -0.25, 1.0, 0.5, 0.0, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.5, 1.0, 0.25, -0.5, 1.0, 0.75, -1.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, 0.75, 0.75, -0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.25, -0.25, -0.25, 0.5, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.5, -1.0, -1.0, -0.5, 0.75, -0.25, 0.75, 0.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.0, 0.5, -0.25, ]);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
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
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array3 = new Float32Array([-0.25, 0.25, -0.5, -0.5, 0.0, 0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.0, 0.5, 0.75, 0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.0, -0.25, -1.0, 1.0, 0.5, 0.25, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.0, 0.5, 1.0, -1.0, -0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, -0.75, 0.25, -0.25, 0.5, 0.0, -1.0, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, 0.75, 0.5, -0.25, 0.0, -0.25, -0.5, 0.25, 0.25, 0.0, 0.25, -1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("internal");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    device40.pushErrorScope("internal");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-1.0, -0.25, -0.25, 0.0, -1.0, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.25, -0.25, -0.25, -0.75, 1.0, -0.25, 0.0, 0.25, -1.0, 0.0, 1.0, 0.75, -0.25, 0.75, -0.75, -1.0, 1.0, 0.5, 0.0, -1.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.75, 0.5, -0.5, 0.5, 0.0, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, 0.0, 1.0, -1.0, -1.0, 0.25, -1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.5, 0.0, 0.5, 0.25, 0.25, -1.0, -0.5, 1.0, -0.5, -0.75, 0.0, 1.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.75, -0.75, 0.75, -0.25, -0.25, 0.75, 1.0, 0.25, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    device60.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    device70.destroy();
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.pushErrorScope("out-of-memory");
    
    
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
    device40.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder400.popDebugGroup();
    const array5 = new Float32Array([-0.25, 0.25, -0.5, 0.25, -0.5, -0.5, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -0.5, -0.5, 0.5, -0.75, 0.5, 1.0, 0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, -0.75, -0.75, 0.75, 1.0, 0.0, 0.25, 0.0, -0.25, -0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.5, 0.25, -0.5, 1.0, -0.75, 0.5, 0.75, 0.0, -0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.5, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, -0.75, 0.75, 0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, 0.5, -1.0, ]);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device110.pushErrorScope("out-of-memory");
    device20.pushErrorScope("validation");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device80.destroy();
    const array6 = new Float32Array([0.75, 0.25, 0.25, 0.0, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 0.25, -0.75, -0.25, -0.75, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, -0.5, 1.0, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.5, 0.25, -1.0, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, -0.5, -0.75, -1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -1.0, -0.75, 0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 0.25, -0.25, 0.75, 0.0, -0.25, 0.25, 0.25, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, 1.0, -0.25, 0.5, -0.25, 0.25, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, -0.5, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, -0.5, -1.0, 1.0, 0.5, -0.75, -1.0, -0.25, 0.25, -0.25, -0.5, -0.75, -0.5, -0.25, -0.75, 0.0, -0.75, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    device90.pushErrorScope("out-of-memory");
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    
    device110.destroy();
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
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
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device100.pushErrorScope("out-of-memory");
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    device130.pushErrorScope("out-of-memory");
    const array7 = new Float32Array([-1.0, -0.5, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, -0.25, 0.0, 0.5, -0.75, 0.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.5, -0.5, -0.75, -0.75, 0.75, -0.25, 1.0, 0.5, 0.5, -0.5, -1.0, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -1.0, 1.0, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, 1.0, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 1.0, 0.5, -0.75, -0.5, 0.25, 1.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.75, 0.0, 0.5, 0.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 0.25, 0.25, 1.0, -0.25, -1.0, 0.5, 0.5, 1.0, ]);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    device120.pushErrorScope("out-of-memory");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device130.pushErrorScope("validation");
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    render_bundle_encoder200.popDebugGroup();
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device120.queue.writeBuffer(buffer1200, 0, array4, 0, array4.length);
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder402.popDebugGroup();
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device40.destroy();
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    device120.queue.writeBuffer(buffer1200, 0, array2, 0, array2.length);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeBuffer(buffer1200, 0, array2, 0, array2.length);
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
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
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout901]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device100.destroy();
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const texture_view13010 = texture1301.createView({ label: "texture_view13010" });
    device120.destroy();
    
    
    device130.queue.writeTexture({ texture: texture1301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture_view13011 = texture1301.createView({ label: "texture_view13011" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device130.queue.writeTexture({ texture: texture1301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device20.destroy();
    device90.queue.writeTexture({ texture: texture901 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    device130.queue.writeTexture({ texture: texture1301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view13012 = texture1301.createView({ label: "texture_view13012" });
    
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    device130.queue.writeTexture({ texture: texture1301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeTexture({ texture: texture901 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device130.queue.writeTexture({ texture: texture1301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeTexture({ texture: texture1301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.destroy();
    device130.queue.writeTexture({ texture: texture1301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device130.queue.writeTexture({ texture: texture1301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1400]
    });
    device130.queue.writeTexture({ texture: texture1301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    device130.queue.writeTexture({ texture: texture1301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([-0.25, -0.75, 0.75, 0.75, -0.25, -0.75, -0.75, -0.25, 0.25, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, 0.75, -0.5, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, 0.75, -0.25, -0.5, -0.25, 0.0, 0.0, -1.0, 0.5, 0.75, 0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.75, 1.0, -0.75, 0.0, -0.25, -0.25, -0.5, 0.25, 1.0, -0.75, 0.25, 0.0, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, ]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    device130.queue.writeTexture({ texture: texture1301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    device90.queue.writeTexture({ texture: texture901 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -0.75, -0.25, 0.25, -0.5, -0.25, 1.0, -0.5, 0.75, 0.5, -0.25, -0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.25, 0.0, -1.0, 0.0, -0.25, -1.0, -0.5, 0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, -0.5, 0.0, 1.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 0.5, -0.75, 0.25, 0.0, -0.75, -1.0, 1.0, 0.0, 0.75, -0.5, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, -0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, 0.75, 1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, -0.5, 1.0, ]);
    const texture_view13001 = texture1300.createView({ label: "texture_view13001" });
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout903]
    });
    const texture_view9013 = texture901.createView({ label: "texture_view9013" });
    
    device140.destroy();
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device150.destroy();
    const pipeline_layout903 = device90.createPipelineLayout({ 
        label: "pipeline_layout903",
        bindGroupLayouts: [bind_group_layout901]
    });
    device90.queue.writeTexture({ texture: texture901 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture901 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view9014 = texture901.createView({ label: "texture_view9014" });
    device130.queue.writeTexture({ texture: texture1301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout904 = device90.createPipelineLayout({ 
        label: "pipeline_layout904",
        bindGroupLayouts: [bind_group_layout903]
    });
    device130.queue.writeTexture({ texture: texture1301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout905 = device90.createPipelineLayout({ 
        label: "pipeline_layout905",
        bindGroupLayouts: [bind_group_layout903]
    });
    device90.queue.writeTexture({ texture: texture904 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
}