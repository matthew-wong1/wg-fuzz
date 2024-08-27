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
    const array0 = new Float32Array([-0.75, 0.0, -1.0, -0.75, 1.0, 0.0, 0.0, 0.75, 0.5, 0.0, 0.0, 0.0, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.0, -0.25, -0.75, 0.5, -0.75, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, -0.5, -0.25, 0.25, 0.75, 0.25, -1.0, -0.5, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, -1.0, -0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, -1.0, 0.5, 1.0, -0.25, -0.25, 0.0, -0.75, -0.25, -0.25, -1.0, 0.0, -0.75, 1.0, -0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, -0.75, 0.25, -1.0, ]);
    
    
    const array1 = new Float32Array([0.75, 0.25, 0.5, 0.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 1.0, 1.0, -0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 0.0, 0.0, -0.5, -0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 0.5, -1.0, -1.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.0, 0.25, -0.75, 0.0, 0.5, -0.25, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, 0.0, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, -0.5, 0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.75, -0.75, -0.5, -0.5, -0.25, 0.25, -0.75, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, 0.25, -0.75, -0.5, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.0, 0.5, ]);
    
    const array2 = new Float32Array([1.0, -1.0, -0.25, 0.25, 0.0, 0.75, -1.0, -0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.25, 0.75, -0.25, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, -0.5, 0.75, -0.25, 0.25, -1.0, -0.5, 0.75, -0.25, 0.75, 0.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.0, -0.5, 1.0, -1.0, 0.25, 1.0, 0.25, 1.0, 0.5, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, 0.75, -0.75, 0.25, -0.5, 0.75, -0.75, 1.0, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 0.25, -0.75, 0.5, 0.5, 0.5, 0.0, 0.5, 0.0, -0.75, -0.25, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    
    
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
    
    const array3 = new Float32Array([0.75, -0.25, -1.0, -1.0, 0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 1.0, 0.5, 0.75, 0.0, 0.75, 1.0, -0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.75, -0.5, -1.0, 0.5, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 0.0, 1.0, 1.0, 1.0, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, 0.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, 0.25, 0.75, -1.0, -0.75, 0.75, -0.25, -0.75, -0.75, 0.5, -0.25, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 1.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.0, -0.25, 0.25, ]);
    device00.pushErrorScope("validation");
    
    
    
    
    const array4 = new Float32Array([0.25, -0.5, 1.0, -0.25, 0.0, -1.0, -1.0, 0.5, 0.25, -0.5, 1.0, -1.0, 0.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -0.75, -0.75, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, 0.0, -0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.25, 0.0, -1.0, -0.75, -0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.0, 0.75, -0.25, -0.25, 0.75, 0.25, 0.75, 0.75, -0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 0.75, 0.75, 0.75, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, 1.0, -0.75, 0.0, -0.5, 0.25, -0.25, -1.0, -0.25, -0.75, 1.0, -0.5, 1.0, -0.75, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture002.destroy();
    
    texture001.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    texture004.destroy();
    command_encoder000.pushDebugGroup("mygroupmarker")
    
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("validation");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    texture003.destroy();
    render_pass_encoder0000.insertDebugMarker("marker");
    device40.destroy();
    render_pass_encoder0000.executeBundles([])
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setStencilReference(1);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    texture006.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder301.insertDebugMarker("mymarker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0000.executeBundles([])
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("internal");
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture007.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    texture008.destroy();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.insertDebugMarker("mymarker");
    texture301.destroy();
    const array5 = new Float32Array([-0.5, 0.0, -0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -0.25, -1.0, 1.0, 0.75, -0.75, 0.5, -0.5, -0.5, -1.0, -1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.5, 0.25, 0.5, 1.0, 1.0, 0.25, -0.25, 0.75, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.0, 1.0, -0.25, 0.0, 0.75, -1.0, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.5, 0.0, 0.0, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, -0.25, 0.25, -0.25, 0.0, 1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.75, 0.0, -0.5, -0.75, 0.75, 0.25, -0.5, -1.0, ]);
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
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
    const array6 = new Float32Array([-0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.0, -0.75, 0.0, -0.75, 1.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.25, 0.0, 0.0, 0.5, 0.75, 1.0, 0.5, 0.5, 0.5, 0.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.5, 0.5, -1.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 0.25, 0.75, -1.0, 0.5, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -1.0, -0.75, 0.5, 0.75, 0.0, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, -1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 0.25, 0.75, 0.75, -1.0, -1.0, 0.0, ]);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setStencilReference(1);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder500.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder301.popDebugGroup();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder0010.setStencilReference(1);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.executeBundles([])
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    texture200.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder3000.executeBundles([])
    command_encoder201.insertDebugMarker("mymarker");
    texture302.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    device70.pushErrorScope("out-of-memory");
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
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
    texture501.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    texture005.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder201.insertDebugMarker("mymarker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    texture201.destroy();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture500.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    device80.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device20.queue.submit([command_buffer202, ]);
    const array7 = new Float32Array([1.0, 1.0, 0.25, 0.75, 0.25, 0.25, -0.25, 0.0, 0.25, -1.0, -0.75, -0.25, 0.75, -0.25, 0.0, -0.75, -0.25, -1.0, -0.25, 0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 1.0, -0.75, 0.25, -0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.0, -1.0, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, 1.0, -0.75, 0.5, 0.0, -1.0, -0.5, 0.5, 0.5, -0.75, -1.0, 0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -0.25, -1.0, 0.5, -0.25, -0.75, -0.75, 0.5, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.25, -0.75, 1.0, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    texture300.destroy();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device90.pushErrorScope("internal");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.setStencilReference(1);
    command_encoder201.insertDebugMarker("mymarker");
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
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const array8 = new Float32Array([0.25, 0.25, 0.25, -0.25, 0.5, -0.25, 0.25, 0.0, -0.75, 0.25, -0.5, 1.0, -0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, 1.0, -0.75, 0.5, 0.25, 0.25, 0.25, -0.25, -0.5, -0.25, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, -1.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.0, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, -1.0, 0.0, 0.25, -0.25, -0.5, 0.75, 1.0, 1.0, -0.5, 0.75, -0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 1.0, -0.75, 0.0, 0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, -1.0, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.25, 1.0, -0.75, -0.25, ]);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder700.popDebugGroup();
    
    device100.destroy();
    render_pass_encoder3000.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer901 = command_encoder901.finish();
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const array9 = new Float32Array([0.75, 0.25, -0.25, -0.75, -0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 0.0, -0.5, 0.5, 0.25, 1.0, -0.25, -0.5, 0.75, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, -1.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.25, 0.25, -0.5, 0.25, -0.5, 0.0, -0.75, -0.5, 0.5, -0.25, 0.25, -0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -0.25, -0.5, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, 0.5, 1.0, 1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.0, -0.25, -0.5, 0.75, -1.0, 0.25, 1.0, -0.75, -1.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.75, 0.75, 0.5, 0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 0.0, -0.25, 0.0, -0.5, ]);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder702.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const array10 = new Float32Array([-0.25, -0.25, 0.25, 0.0, -0.75, -0.75, -0.75, 0.25, 0.0, 0.75, 0.0, -0.25, -1.0, -0.5, 0.5, -0.5, -0.5, 0.5, 0.75, 1.0, 0.75, -0.5, -0.25, -0.25, 0.5, 0.75, -0.75, 0.25, 0.5, -0.5, 0.5, -1.0, 0.75, 0.0, 0.5, 1.0, -0.25, 0.0, 0.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.25, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, -0.5, -0.75, 0.25, -0.25, -0.25, 0.5, 0.75, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, -0.75, 0.0, 1.0, 0.5, 0.5, 0.0, 1.0, 0.75, -0.75, -0.25, 0.5, -0.25, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.5, 0.0, 0.25, -0.25, ]);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    texture503.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device60.pushErrorScope("out-of-memory");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder702.popDebugGroup();
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
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
    compute_pass_encoder7000.popDebugGroup()
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    command_encoder900.insertDebugMarker("mymarker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder1101.insertDebugMarker("marker");
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    texture502.destroy();
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder701.popDebugGroup();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    texture303.destroy();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    compute_pass_encoder3020.popDebugGroup()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture202.destroy();
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    
    render_bundle_encoder1101.popDebugGroup();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device30.pushErrorScope("validation");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture304.destroy();
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    command_encoder1100.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder902.insertDebugMarker("mymarker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer902 = command_encoder902.finish();
    device90.queue.submit([command_buffer902, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    const command_buffer701 = command_encoder701.finish();
    const command_buffer1100 = command_encoder1100.finish();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder3010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer004, ]);
    device90.queue.submit([command_buffer901, ]);
    device110.queue.submit([command_buffer1100, ]);
}