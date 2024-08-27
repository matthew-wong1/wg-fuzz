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
    
    const array0 = new Float32Array([0.0, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, -1.0, -0.25, -0.25, -0.25, -0.5, 1.0, -0.5, -0.75, 0.5, 0.0, 0.25, -0.75, 0.25, 0.75, 0.25, -0.75, 0.75, 1.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 0.75, 0.5, 1.0, 0.75, -1.0, -0.25, -0.25, 0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 0.75, 0.25, 1.0, 0.0, 0.5, -1.0, 0.0, -0.25, -0.5, -0.25, 0.25, -0.25, 0.25, 0.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, ]);
    
    
    
    const array1 = new Float32Array([-0.75, -0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, 0.5, -0.75, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, 0.75, 1.0, 0.0, 0.75, -0.75, 0.5, 1.0, 0.25, 0.25, -0.25, -0.75, -0.5, 0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.75, -0.25, 0.25, -0.25, -1.0, -0.5, -0.5, 0.5, -0.75, 0.25, 1.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.75, 0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, -1.0, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.75, -0.75, 1.0, 1.0, 0.75, -1.0, 0.25, -0.25, -0.25, -0.75, -0.25, 0.0, -0.75, -0.5, 1.0, -1.0, -0.5, ]);
    
    
    const array2 = new Float32Array([-0.75, 0.0, -0.25, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.75, -1.0, -0.25, 0.5, 1.0, 0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, 0.75, 0.25, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.0, -0.75, 1.0, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, 1.0, 0.5, 0.5, -0.75, -0.25, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, -0.75, 0.75, 0.5, -0.75, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.5, -0.5, -0.25, 0.75, 1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const array3 = new Float32Array([1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, 0.0, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 0.25, 0.5, 0.25, 0.25, 0.5, -0.25, 0.25, -0.25, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 1.0, -0.75, -0.25, 0.25, 0.75, 0.25, -0.75, -0.5, 0.25, 0.75, 0.0, -1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, 1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 1.0, -1.0, 0.5, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, -0.25, ]);
    
    
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query100.destroy()
    
    device10.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture000.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.25, -1.0, 0.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 0.5, 1.0, 0.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, -0.75, -0.75, -1.0, -0.5, 0.5, 0.25, 0.0, -0.75, 0.5, 1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -1.0, 1.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.25, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, -0.5, 0.0, 0.75, -1.0, -0.5, -0.25, -0.75, 0.5, -0.25, -0.5, 1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, -1.0, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    texture300.destroy();
    
    query001.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
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
    device30.destroy();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device20.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
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
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([-0.25, -0.75, 0.25, -1.0, 0.0, -0.5, 0.0, -0.75, 1.0, -0.75, -0.25, -0.5, -0.5, -0.25, -1.0, -0.75, 0.75, -0.5, 0.25, 0.25, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.0, 1.0, 1.0, 1.0, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, -0.75, -1.0, 0.0, 0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 0.5, 0.0, 0.0, -0.75, -0.5, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -0.75, 0.25, -0.5, -1.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.75, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, -0.25, -0.5, ]);
    
    
    device50.destroy();
    const array6 = new Float32Array([1.0, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, -0.5, -0.5, 1.0, -1.0, 0.5, 0.5, 1.0, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.0, -0.25, 0.0, -0.25, -0.5, -0.25, 0.0, 0.5, -0.5, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, -0.75, -0.25, -0.75, -0.5, 1.0, -0.25, 0.75, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 0.0, 0.25, 0.25, 0.75, -0.5, -1.0, 0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -1.0, -0.25, -0.75, -0.5, -1.0, 0.0, -0.75, -0.5, 0.5, -0.25, -0.25, -0.25, 0.5, 0.25, -1.0, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -0.75, 1.0, 0.5, 0.25, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const array7 = new Float32Array([0.0, 0.75, 0.25, -0.25, -0.25, -0.5, 0.75, -0.75, 0.25, 0.5, -0.75, 0.5, -0.25, 0.75, 0.25, -1.0, 0.75, -1.0, 0.75, 0.25, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, 1.0, 0.25, -0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, -1.0, 0.75, 0.75, 0.25, -1.0, -0.5, 0.5, -1.0, 0.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 0.25, 0.5, -0.5, 1.0, 0.0, 0.25, 0.0, 0.5, 0.25, -0.5, -0.25, 1.0, -0.5, 0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, 0.0, 0.75, ]);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    const array8 = new Float32Array([0.75, 0.25, 0.5, 0.0, 0.75, 0.5, -0.75, 0.0, 0.0, 1.0, 0.5, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.5, 0.0, 1.0, -0.25, -1.0, -0.5, -1.0, 0.0, -0.5, -0.5, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.0, -0.25, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, -1.0, 0.5, -0.5, -0.5, 1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.25, 1.0, 0.0, 0.5, -1.0, 0.5, -0.75, 0.5, 1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.5, 0.25, -1.0, 0.0, -0.25, 0.75, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, -0.25, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, 0.25, -0.75, ]);
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    
    const array9 = new Float32Array([-0.5, -0.75, -0.5, 0.25, -1.0, -0.5, 0.75, -1.0, 0.25, 1.0, -0.5, -1.0, 0.25, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, -0.5, 0.25, -0.25, 0.25, -0.5, 0.75, 0.5, 0.75, -0.5, 0.0, 0.25, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.75, 1.0, 1.0, 0.25, 1.0, -0.5, -1.0, 0.0, 0.0, 0.75, -0.5, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, -0.75, -1.0, -0.25, 0.5, -0.5, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 1.0, 0.5, -0.5, -0.25, 0.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.25, -0.5, -1.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.75, ]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.destroy();
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    texture002.destroy();
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    
    query300.destroy()
    
    
    
    
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
    
    query800.destroy()
    
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.destroy();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const array10 = new Float32Array([-0.75, 0.0, 0.25, -0.75, 1.0, -0.5, -1.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.5, -1.0, 0.75, -0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.75, -0.5, -0.25, 0.5, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, 0.5, 0.0, 0.5, -1.0, -1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.25, -0.25, 0.75, -0.25, -1.0, -0.75, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, -1.0, 0.0, -0.25, 1.0, 1.0, 0.75, 0.0, 0.0, -0.25, -0.5, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 1.0, 1.0, -0.5, ]);
    device40.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    query701.destroy()
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    
    query800.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    device10.destroy();
    device50.destroy();
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    texture700.destroy();
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device70.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    texture900.destroy();
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device90.destroy();
    
    
    
    
    
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array11 = new Float32Array([-0.75, 0.0, 1.0, 0.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.5, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.75, 1.0, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.0, -0.25, 0.25, -0.25, -1.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, -0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.5, 1.0, -0.75, 0.75, 1.0, -0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 1.0, -0.75, -1.0, 0.0, -0.25, -0.25, -1.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.0, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.75, 0.25, 0.5, ]);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture600.destroy();
    
    
    texture500.destroy();
    device100.queue.submit([]);
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    query1100.destroy()
    query400.destroy()
    texture1000.destroy();
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_bundle_encoder1001.insertDebugMarker("marker");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture303 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    device100.queue.writeTexture({ texture: texture1001 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device100.queue.writeTexture({ texture: texture1001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    
    device90.destroy();
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    device100.queue.writeTexture({ texture: texture1001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1000.insertDebugMarker("marker");
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
    });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    device100.queue.writeTexture({ texture: texture1001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1103 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1103",
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
    
    device120.destroy();
    render_bundle_encoder1001.insertDebugMarker("marker");
    device110.destroy();
    
    device100.queue.writeTexture({ texture: texture1001 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    device100.destroy();
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query801.destroy()
    device120.queue.writeTexture({ texture: texture1200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder1002.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    device100.queue.writeTexture({ texture: texture1001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    device120.queue.writeTexture({ texture: texture1200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture901.destroy();
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1101]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
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
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const array12 = new Float32Array([0.0, -0.75, 0.0, -0.75, -0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, 1.0, 0.0, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 1.0, 0.5, -0.25, 0.5, 0.25, 0.5, 0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -1.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.25, -0.5, 0.5, 0.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.0, 1.0, 0.5, -0.25, -0.5, -0.25, -1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, -1.0, 0.5, 0.25, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, -0.75, 0.5, ]);
    query800.destroy()
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device100.queue.writeTexture({ texture: texture1001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
}