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
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device30.destroy();
    device40.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
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
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query200.destroy()
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device50.queue.submit([]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.destroy();
    texture100.destroy();
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    const command_buffer501 = command_encoder501.finish();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    texture100.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query500.destroy()
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    query500.destroy()
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const command_buffer100 = command_encoder100.finish();
    
    
    
    
    render_bundle_encoder100.popDebugGroup();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout503]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array0 = new Float32Array([1.0, 0.75, 0.5, 0.0, 0.75, 0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.75, -0.5, 0.25, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, 0.0, 0.5, -0.75, -1.0, 0.0, 1.0, 0.5, 0.75, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 1.0, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.75, 0.75, 0.0, 0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.0, 1.0, 0.5, -0.75, -0.25, -0.5, -0.75, -1.0, -0.25, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, 0.0, 0.5, 0.75, -0.5, 0.25, -0.75, 0.0, ]);
    texture500.destroy();
    const array1 = new Float32Array([0.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.75, 0.25, -0.5, 1.0, 0.25, 0.25, -0.75, 0.25, -1.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.0, -0.5, 0.75, 0.25, 0.75, -0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, 0.5, -0.75, -0.5, -0.75, -1.0, -1.0, -1.0, 0.75, 0.0, 1.0, 0.75, -1.0, 1.0, 0.0, 0.75, 1.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.25, -0.25, -0.5, 0.0, -0.25, 1.0, -0.5, -1.0, -0.25, 0.0, 1.0, -0.25, 0.5, 0.25, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 0.25, 1.0, -1.0, 0.75, 0.5, -1.0, 0.25, 1.0, 0.25, 0.5, 0.5, -0.25, 0.5, -0.75, -0.5, -0.5, -0.75, 0.5, -1.0, 0.0, -0.25, -0.5, 0.25, -0.75, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    device50.destroy();
    
    const array2 = new Float32Array([1.0, -0.5, 0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 0.5, -0.5, 0.5, -0.25, 0.5, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, -1.0, -1.0, 0.75, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, 0.75, -0.75, -0.25, 0.25, 0.25, 0.25, -0.5, 0.75, 1.0, 0.5, 0.75, -0.5, 0.75, 0.5, 0.5, 1.0, 0.5, -1.0, -0.75, -0.5, 1.0, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 1.0, -0.5, 0.0, -0.75, -0.5, -0.25, 0.75, 0.0, 0.25, -1.0, -0.5, 0.5, -0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.5, -0.75, 0.0, -0.75, 0.5, 0.75, ]);
    texture100.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query102.destroy()
    
    
    device00.destroy();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    
    
    query100.destroy()
    render_bundle_encoder101.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    query101.destroy()
    query100.destroy()
    
    
    texture101.destroy();
    query100.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array3 = new Float32Array([0.5, 0.75, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.75, -0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, -1.0, 1.0, 0.75, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, 0.25, -1.0, 0.5, -1.0, 0.5, 0.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -1.0, 1.0, 0.25, -0.5, 0.25, -0.75, 0.25, -0.5, -0.5, -0.25, -0.75, 0.75, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, -1.0, -0.75, 0.75, 1.0, 0.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.25, 0.0, -0.75, 0.0, 1.0, -0.75, 0.5, 0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, ]);
    device60.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder502.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query102.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder701.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    render_bundle_encoder701.popDebugGroup();
    query101.destroy()
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    device10.queue.submit([command_buffer100, ]);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_bundle_encoder100.popDebugGroup();
    texture102.destroy();
    command_encoder102.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const compute_pass_encoder7011 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7011" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query101.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder700.popDebugGroup();
    query700.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query102.destroy()
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    texture103.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
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
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    texture103.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder7011.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    query104.destroy()
    
    render_bundle_encoder101.popDebugGroup();
    
    query700.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.5, 1.0, 1.0, 0.5, 0.5, 0.5, 0.0, -0.25, 1.0, 0.25, -0.5, 0.5, -0.75, -1.0, 0.25, -0.5, 0.0, -0.75, 0.25, -0.5, -0.5, 1.0, 1.0, 1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, -0.75, -0.5, -0.5, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.25, 0.5, 1.0, 0.75, -0.25, -1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 0.5, -1.0, -0.5, 1.0, -0.75, -0.75, -0.25, 0.0, 0.25, 0.0, -0.25, 0.5, 0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 0.0, 0.75, -0.5, -0.25, -0.25, 0.0, 1.0, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder701.popDebugGroup();
    
    compute_pass_encoder7011.pushDebugGroup("group_marker")
    query201.destroy()
    
    device00.queue.submit([]);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const array5 = new Float32Array([1.0, 0.0, -0.25, 0.5, -0.75, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 0.5, -0.75, -0.25, -0.5, 0.75, -0.25, 0.25, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.25, -1.0, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, 1.0, -0.75, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.0, -0.75, -0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 1.0, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.75, 1.0, -0.5, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, -0.75, 0.0, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, -0.75, 0.25, -0.25, -0.75, 0.75, 0.75, ]);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    command_encoder702.copyTextureToTexture(
        {
            texture: texture701
        },
        {
            texture: texture700
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query104.destroy()
    query700.destroy()
    query105.destroy()
    
    query201.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer703 = command_encoder703.finish();
    
    
    texture700.destroy();
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query701.destroy()
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const command_buffer105 = command_encoder105.finish();
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    query200.destroy()
    
    query101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    query103.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    query102.destroy()
    query103.destroy()
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    query102.destroy()
    const array6 = new Float32Array([0.0, 0.25, -0.75, 0.75, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 0.25, 0.5, -0.25, 0.5, -0.75, 1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.25, 0.5, 0.75, -0.25, 0.75, 0.75, 1.0, -0.5, -0.25, -1.0, 1.0, -0.75, -0.75, 0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, -0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -0.75, 0.25, -0.75, 0.25, 0.0, 0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.25, -0.25, 0.0, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, 0.25, 0.5, 0.75, -1.0, 0.5, -0.5, 1.0, 0.75, 0.25, 0.0, 0.25, 0.5, 0.0, ]);
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    query701.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_bundle_encoder702.insertDebugMarker("marker");
    texture104.destroy();
    render_bundle_encoder700.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    query104.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query100.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const command_buffer106 = command_encoder106.finish();
    query700.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    query102.destroy()
    command_encoder701.pushDebugGroup("mygroupmarker")
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout704]
    });
    
    
    query105.destroy()
    
    query101.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    query700.destroy()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    query700.destroy()
    
    
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout703]
    });
    command_encoder107.pushDebugGroup("mygroupmarker")
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout702]
    });
    command_encoder107.insertDebugMarker("mymarker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    
    query104.destroy()
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout702]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    const command_buffer705 = command_encoder705.finish();
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    query701.destroy()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    const command_buffer704 = command_encoder704.finish();
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    query201.destroy()
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout502]
    });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    texture702.destroy();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    
    query101.destroy()
    command_encoder107.copyTextureToTexture(
        {
            texture: texture106
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture701.destroy();
    query701.destroy()
    texture105.destroy();
    query101.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer109 = command_encoder109.finish();
    const command_buffer103 = command_encoder103.finish();
    command_encoder107.popDebugGroup()
    device70.queue.submit([command_buffer703, ]);
    device10.queue.submit([command_buffer109, ]);
    const command_buffer108 = command_encoder108.finish();
    device70.queue.submit([command_buffer702, ]);
    device10.queue.submit([command_buffer103, command_buffer106, command_buffer108, ]);
    const command_buffer107 = command_encoder107.finish();
    device70.queue.submit([command_buffer705, ]);
    device00.queue.submit([]);
    command_encoder102.popDebugGroup()
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    device70.queue.submit([command_buffer704, ]);
    device70.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
}