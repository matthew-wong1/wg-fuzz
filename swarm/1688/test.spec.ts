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
    const array0 = new Float32Array([-0.75, -0.75, -0.75, -0.5, -0.75, -0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 1.0, 0.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, -0.5, -0.75, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.75, 0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -0.5, -0.25, 0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, 0.25, -0.5, 0.75, 0.25, 0.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 0.25, -0.25, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture000.destroy();
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    query100.destroy()
    query000.destroy()
    render_bundle_encoder100.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query102.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
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
        occlusionQuerySet: query000
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.popDebugGroup();
    
    
    texture100.destroy();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    query102.destroy()
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array1 = new Float32Array([-0.75, 0.25, 1.0, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, -1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, -0.75, 1.0, -0.25, 1.0, 0.0, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, -0.75, -0.75, 0.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.0, -0.5, -0.25, 0.5, -0.5, -0.25, -0.75, -0.75, 0.75, -0.75, -0.25, -0.25, -0.75, 0.25, 1.0, -0.5, 0.0, 0.25, -1.0, -0.25, -0.5, -1.0, 0.75, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.75, -0.25, 0.25, 0.25, -1.0, 0.25, 0.25, 0.75, 0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.75, -1.0, 0.5, 0.0, 0.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 0.25, ]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder000.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.popDebugGroup();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.5, -0.75, 0.0, -0.75, -0.75, -0.75, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 1.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.75, -0.25, -0.25, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, -0.5, 0.75, 1.0, -0.5, 0.5, -0.5, 0.5, 0.25, -0.5, -0.75, -0.75, 0.75, 1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.5, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, -0.75, 0.0, -0.5, -0.25, -0.5, 0.25, -0.5, -0.5, -0.5, -0.75, -1.0, 1.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.5, -1.0, -0.75, -0.25, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0020.beginOcclusionQuery(0)
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    texture003.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    query001.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0020.executeBundles([])
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    render_pass_encoder0020.popDebugGroup();
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    texture004.destroy();
    
    render_pass_encoder1040.setStencilReference(1);
    
    texture101.destroy();
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture005.destroy();
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query006
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query000.destroy()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    query005.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const command_buffer001 = command_encoder001.finish();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
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
        occlusionQuerySet: query006
    });
    render_pass_encoder0021.setStencilReference(1);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder0030.executeBundles([render_bundle_encoder000, ])
    query006.destroy()
    render_pass_encoder0021.executeBundles([])
    
    
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query005
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder0000.beginOcclusionQuery(0)
    render_pass_encoder1010.setStencilReference(1);
    texture102.destroy();
    
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0021.executeBundles([render_bundle_encoder000, ])
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    query005.destroy()
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.executeBundles([])
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.popDebugGroup()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.popDebugGroup()
    
    
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0021.executeBundles([])
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query001.destroy()
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    query104.destroy()
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_pass_encoder0031.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    query001.destroy()
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0010.popDebugGroup();
    
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder0020.popDebugGroup()
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0021.executeBundles([])
    compute_pass_encoder1030.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query007
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
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
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query104.destroy()
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0040.executeBundles([])
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder0010.setStencilReference(1);
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query007
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0022.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1041.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0001.executeBundles([])
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query104.destroy()
    texture006.destroy();
    render_pass_encoder1021.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0031.executeBundles([])
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setStencilReference(1);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query106
    });
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder1051.beginOcclusionQuery(0)
    
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder0000.executeBundles([render_bundle_encoder001, ])
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0022.beginOcclusionQuery(0)
    render_pass_encoder1061.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0022.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder1011.beginOcclusionQuery(0)
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    texture002.destroy();
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    query002.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    query103.destroy()
    query002.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    device00.queue.submit([command_buffer001, ]);
    query101.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder1050.setStencilReference(1);
    const array3 = new Float32Array([1.0, -0.25, -0.75, 1.0, -0.75, -0.5, -1.0, -0.5, -0.5, -0.5, -0.25, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, 0.75, 0.25, -1.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, -0.5, -0.5, 0.25, -1.0, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 0.5, 0.25, 0.0, 0.0, 1.0, 1.0, 0.0, -0.25, -0.75, 0.5, -0.25, -1.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.75, -0.25, -1.0, -0.25, -0.5, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.75, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1041.beginOcclusionQuery(2)
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
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
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.executeBundles([])
    render_pass_encoder0022.setStencilReference(1);
    
    render_pass_encoder1070.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1041.pushDebugGroup("group_marker");
    query000.destroy()
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1011.endOcclusionQuery()
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1070.setStencilReference(1);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1070.executeBundles([])
    render_pass_encoder0010.setStencilReference(1);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    query002.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder1061.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1051.beginOcclusionQuery(0)
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1051.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder0002.pushDebugGroup("group_marker");
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder0022.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0041.setStencilReference(1);
    
    render_pass_encoder0042.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder0043 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0043",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0001.setStencilReference(1);
    
    query001.destroy()
    render_pass_encoder0001.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query003
    });
    const array4 = new Float32Array([0.5, 0.75, -1.0, 0.75, -0.5, 1.0, -0.5, -0.75, 0.75, 1.0, 0.0, 0.0, 0.5, -0.75, 0.25, -1.0, 0.0, 0.5, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.5, 0.25, -0.25, 0.5, 0.25, 0.0, 0.75, -0.5, 0.25, 0.25, -0.75, 0.75, 0.5, 0.75, 0.5, -1.0, 0.0, 0.0, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 0.25, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.75, 0.75, ]);
    query102.destroy()
    query003.destroy()
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder0000.executeBundles([])
    
    render_pass_encoder1061.executeBundles([])
    query100.destroy()
    
    query102.destroy()
    render_pass_encoder0041.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1070.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0051.setStencilReference(1);
    render_pass_encoder0002.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0022.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1050.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device00.queue.submit([]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0002.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device00.queue.submit([]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device00.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer104, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0043.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer103, command_buffer104, command_buffer107, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer105, command_buffer106, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer107, ]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([]);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer104, command_buffer105, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer107, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer106, command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer105, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0043.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer004, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0041.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0042.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer105, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1001.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0043.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0002.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer105, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0042.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device10.queue.submit([]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0002.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer107, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0002.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, command_buffer005, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder0022.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0001.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, command_buffer106, ]);
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0002.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1041.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer106, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder0043.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer106, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1070.popDebugGroup();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer105, command_buffer106, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0022.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer106, ]);
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0043.endOcclusionQuery()
    device10.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0043.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0043.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0042.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0042.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder0042.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0002.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0042.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0043.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
}