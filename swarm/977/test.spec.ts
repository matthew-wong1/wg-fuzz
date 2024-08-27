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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    texture000.destroy();
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    
    
    const command_buffer101 = command_encoder101.finish();
    texture101.destroy();
    compute_pass_encoder1000.popDebugGroup()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.submit([command_buffer101, ]);
    
    query100.destroy()
    
    query100.destroy()
    texture102.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query100.destroy()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer102 = command_encoder102.finish();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer100.destroy()
    device10.pushErrorScope("internal");
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    texture104.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query102.destroy()
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
    
    
    query102.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    texture200.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1050.beginOcclusionQuery(0)
    device20.pushErrorScope("internal");
    
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
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
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    texture103.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    query100.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.setStencilReference(1);
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder106.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder106.insertDebugMarker("mymarker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1060.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    buffer200.destroy()
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1060.setStencilReference(1);
    query201.destroy()
    query201.destroy()
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1060.insertDebugMarker("marker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_pass_encoder1060.setStencilReference(1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    query201.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1080.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder1060.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1080.setStencilReference(1);
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1080.pushDebugGroup("group_marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    texture201.destroy();
    
    texture203.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    render_pass_encoder1090.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1050.popDebugGroup();
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture205.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1090.insertDebugMarker("marker");
    render_pass_encoder1040.beginOcclusionQuery(0)
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    render_pass_encoder1090.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder10110 = command_encoder1011.beginRenderPass({
        label: "render_pass_encoder10110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    query200.destroy()
    
    render_pass_encoder1090.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.popDebugGroup();
    const render_pass_encoder10100 = command_encoder1010.beginRenderPass({
        label: "render_pass_encoder10100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query103
    });
    query100.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1090.pushDebugGroup("group_marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder10100.insertDebugMarker("marker");
    query102.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    texture106.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1070.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder10110.insertDebugMarker("marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.popDebugGroup()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder10100.beginOcclusionQuery(0)
    render_pass_encoder10110.insertDebugMarker("marker");
    query201.destroy()
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1050.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1050.pushDebugGroup("group_marker");
    buffer201.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view2043 = texture204.createView({ label: "texture_view2043" });
    device10.pushErrorScope("internal");
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2042,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1090.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    buffer101.destroy()
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder10100.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1080.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const texture_view2044 = texture204.createView({ label: "texture_view2044" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_pass_encoder1080.pushDebugGroup("group_marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    buffer202.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    texture400.destroy();
    render_pass_encoder1050.popDebugGroup();
    query100.destroy()
    render_pass_encoder10110.beginOcclusionQuery(0)
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder10100.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    render_pass_encoder10110.endOcclusionQuery()
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    render_pass_encoder1080.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    const texture_view1081 = texture108.createView({ label: "texture_view1081" });
    
    render_pass_encoder10100.insertDebugMarker("marker");
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    texture109.destroy();
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1070.insertDebugMarker("marker")
    render_pass_encoder1050.setStencilReference(1);
    device40.destroy();
    render_pass_encoder2020.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setStencilReference(1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder10100.endOcclusionQuery()
    query200.destroy()
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout105]
    });
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder1090.insertDebugMarker("marker");
    buffer102.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const command_encoder1012 = device10.createCommandEncoder({ label: "command_encoder1012" });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder10120 = command_encoder1012.beginRenderPass({
        label: "render_pass_encoder10120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1090,
            },
        ],
        occlusionQuerySet: undefined
    });
    query203.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder10110.setStencilReference(1);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2045 = texture204.createView({ label: "texture_view2045" });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder10110.pushDebugGroup("group_marker");
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture108.destroy();
    
    render_pass_encoder2030.popDebugGroup();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    render_pass_encoder10110.popDebugGroup();
    render_pass_encoder1060.setStencilReference(1);
    
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder10120.insertDebugMarker("marker");
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    texture206.destroy();
    buffer203.destroy()
    
    query100.destroy()
    query202.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder10110.setStencilReference(1);
    
    query102.destroy()
    
    render_pass_encoder1080.popDebugGroup();
    const command_encoder1013 = device10.createCommandEncoder({ label: "command_encoder1013" });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder10120.setStencilReference(1);
    query104.destroy()
    render_pass_encoder1090.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder10130 = command_encoder1013.beginRenderPass({
        label: "render_pass_encoder10130",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1081,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1090.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder10110.insertDebugMarker("marker");
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1080.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture1010.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder10100.beginOcclusionQuery(0)
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder10100.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder10100.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
}