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
    
    
    
    const array0 = new Float32Array([-0.5, 0.75, 0.0, -0.25, -0.75, 1.0, -0.25, -0.5, 0.5, -1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 1.0, -1.0, -0.75, 1.0, 0.25, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, 0.5, 0.25, -0.5, 0.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.5, -0.25, 1.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -0.25, 1.0, -1.0, 0.5, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 1.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.0, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, -0.5, 0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 1.0, 0.0, 0.25, 0.75, -0.5, -1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array1 = new Float32Array([-1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 1.0, 0.0, 0.5, 0.25, -1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.25, 0.0, -0.25, -0.25, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 0.25, -1.0, 0.75, 0.75, -1.0, -0.5, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, -0.25, -0.25, 0.5, 1.0, 1.0, 0.0, -0.25, -0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, -0.5, -1.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.75, 0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, 0.25, 0.75, -0.5, 0.25, 0.75, -0.5, 0.25, -0.5, 0.25, -0.75, 0.5, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder100.popDebugGroup();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([1.0, -0.25, 0.0, -1.0, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.25, 0.75, -0.25, 0.75, 0.25, 0.75, 0.25, -0.25, -0.25, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 1.0, -0.75, 0.25, 1.0, 0.75, 0.25, -0.25, 0.0, 0.0, -0.5, 0.75, 0.5, 0.0, 1.0, -0.5, 0.75, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, -1.0, 0.0, -0.25, -1.0, -0.25, -0.5, 0.25, -0.25, 0.75, -0.75, -0.75, 1.0, 0.25, 0.25, 0.75, -0.75, 0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer000 = command_encoder000.finish();
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.insertDebugMarker("mymarker");
    
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
    texture301.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture300.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    
    texture001.destroy();
    
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture003.destroy();
    render_pass_encoder0010.setStencilReference(1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder300.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const array3 = new Float32Array([0.5, -0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.75, 0.25, -0.75, 0.75, 0.75, 0.75, 0.5, -0.25, -1.0, 1.0, 1.0, -0.5, 0.0, 0.75, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 0.25, 0.0, 1.0, -0.75, -0.25, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, -1.0, 0.25, 1.0, -0.75, -1.0, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, -0.75, 1.0, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.25, 0.5, 0.25, 0.0, 0.0, -0.75, -0.5, 0.25, 0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.25, 0.5, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, 0.5, 0.75, 0.5, ]);
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.popDebugGroup();
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
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const texture302 = device30.createTexture({
        label: "texture302",
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
    
    texture200.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.executeBundles([])
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    command_encoder300.insertDebugMarker("mymarker");
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    texture200.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    const command_buffer003 = command_encoder003.finish();
    const command_buffer200 = command_encoder200.finish();
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder0010.setStencilReference(1);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture302.destroy();
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer302 = command_encoder302.finish();
    const array4 = new Float32Array([-0.5, -1.0, -0.5, 0.0, 0.25, -0.5, -0.25, -1.0, -0.75, 0.0, 0.25, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, -0.25, -0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, -0.25, -0.25, -1.0, 0.5, 1.0, 0.75, 0.75, 0.5, 0.25, 1.0, 0.0, -0.25, -1.0, -0.25, 0.25, -0.25, -0.25, -1.0, -0.75, 1.0, -0.25, -0.25, 0.25, -0.25, 0.25, -0.5, -1.0, 0.5, 1.0, -0.5, -1.0, -0.25, 0.75, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.75, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, 0.25, -0.25, -0.5, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, -0.25, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, 1.0, 0.0, -0.5, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
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
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0040.executeBundles([])
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.destroy();
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.executeBundles([])
    const array5 = new Float32Array([0.5, 0.25, 0.5, -0.25, 0.25, -1.0, -0.25, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, 0.25, -1.0, -0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, -0.25, -1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, -1.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.75, -1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.25, 0.75, 0.5, -0.25, -0.5, 1.0, -1.0, -0.5, -0.25, 0.75, 0.75, -0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, -0.25, 1.0, 0.5, 0.25, -0.5, -0.5, 1.0, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setStencilReference(1);
    device30.queue.submit([command_buffer302, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder0040.executeBundles([])
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
    render_pass_encoder0021.insertDebugMarker("marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    
    
    
    
    
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder3010.executeBundles([])
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    render_pass_encoder0010.executeBundles([])
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    render_pass_encoder3001.executeBundles([])
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3033 = texture303.createView({ label: "texture_view3033" });
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    
    
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder0022.setStencilReference(1);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    texture002.destroy();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder0022.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder3000.setStencilReference(1);
    texture004.destroy();
    device50.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder3030.executeBundles([])
    
    render_pass_encoder0022.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder3030.executeBundles([render_bundle_encoder302, ])
    render_pass_encoder0020.insertDebugMarker("marker");
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
    
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3033,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device40.destroy();
    
    
    render_pass_encoder3030.insertDebugMarker("marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0041.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0041.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder3001.insertDebugMarker("marker");
    
    const command_buffer002 = command_encoder002.finish();
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
    render_pass_encoder0022.insertDebugMarker("marker");
    
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder3001.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    texture005.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.25, -0.25, 0.25, -1.0, 0.5, -1.0, 1.0, 0.5, 0.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 1.0, -0.25, -1.0, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, -0.75, 0.0, 1.0, -1.0, -1.0, -0.5, -0.25, -0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.25, -0.5, 0.5, 0.0, 0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, -0.5, -0.5, -0.5, 0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 0.75, 0.75, -1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 0.25, 1.0, -0.75, -0.75, 0.5, 0.5, 0.25, -0.25, 0.5, -0.25, ]);
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder3031.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder0021.executeBundles([])
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0051.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0051.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    
    
    render_pass_encoder3001.executeBundles([])
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0051.executeBundles([])
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0011.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder301.popDebugGroup();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3031.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    
    const texture_view3034 = texture303.createView({ label: "texture_view3034" });
    
    render_pass_encoder0040.executeBundles([])
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.executeBundles([])
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0041.popDebugGroup();
    device50.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    texture006.destroy();
    render_pass_encoder3030.executeBundles([render_bundle_encoder301, ])
    render_pass_encoder3031.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3000.setStencilReference(1);
    texture000.destroy();
    render_pass_encoder3000.executeBundles([])
    
    render_pass_encoder3031.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    const texture_view3035 = texture303.createView({ label: "texture_view3035" });
    render_pass_encoder0041.setStencilReference(1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder0022.executeBundles([])
    render_pass_encoder3000.executeBundles([])
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3031.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    texture000.destroy();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3031.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3001.setStencilReference(1);
    texture302.destroy();
    const array7 = new Float32Array([0.5, 0.25, 0.25, 1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 0.5, 0.75, 0.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.25, 1.0, -0.75, 0.5, -0.75, 0.0, -0.75, 0.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.25, -0.5, -0.5, 0.0, -0.75, 0.25, 0.25, 1.0, 0.75, -0.5, 1.0, -1.0, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, -0.5, -1.0, 0.75, 1.0, 0.25, 0.75, 0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.0, 0.5, 1.0, 0.5, 0.25, 1.0, 0.0, ]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder3031.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder3001.setStencilReference(1);
    
    
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0022.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder3031.insertDebugMarker("marker");
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder3001.insertDebugMarker("marker");
    
    render_pass_encoder3011.insertDebugMarker("marker");
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3035,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    render_pass_encoder3010.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device30.queue.submit([command_buffer303, ]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0022.setStencilReference(1);
    const array8 = new Float32Array([-0.25, -0.75, 0.25, -0.5, -0.5, -0.75, 0.0, -0.25, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, -0.75, 0.5, -0.25, -0.25, 0.0, 0.5, 0.5, 0.75, -0.25, -1.0, -0.75, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.0, -0.25, -0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.5, -0.5, 0.0, -0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 0.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.75, 0.75, -0.25, 0.25, 0.25, -0.25, -0.25, 1.0, 0.75, 1.0, -0.25, -0.25, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, ]);
    device30.queue.writeTexture({ texture: texture305 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0022.insertDebugMarker("marker");
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.executeBundles([])
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.destroy();
    
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0051.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder3011.insertDebugMarker("marker");
    texture007.destroy();
    
    render_pass_encoder0022.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.executeBundles([])
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0051.setStencilReference(1);
    device40.destroy();
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    texture002.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0022.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0041.setStencilReference(1);
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder3011.popDebugGroup();
}