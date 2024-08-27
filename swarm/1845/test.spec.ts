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
    
    const array0 = new Float32Array([0.75, -0.25, 0.5, -1.0, -0.25, 0.5, -0.25, 0.0, -0.25, -0.5, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 0.25, 1.0, 0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, -0.75, -0.5, 0.0, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 0.75, -0.25, 0.5, -0.25, 0.25, -0.5, -0.25, 0.5, 1.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.0, -1.0, 0.5, 0.0, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, -0.5, ]);
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.25, -0.25, 1.0, 0.0, 0.5, -0.75, -1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.0, -1.0, 1.0, -1.0, 0.0, 1.0, 0.0, -0.25, -1.0, -0.75, -0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.75, -0.25, 0.0, -1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 1.0, 0.5, 0.0, 0.75, -0.25, 0.0, -0.25, -0.5, 0.5, -1.0, -0.25, 0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 0.75, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, -0.25, -1.0, 0.75, 0.5, -0.25, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, 0.25, -0.75, -1.0, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, -1.0, -0.25, 0.25, 1.0, ]);
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("validation");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const array2 = new Float32Array([0.75, -0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, 0.0, 0.5, 0.0, 0.75, 1.0, -0.5, -0.5, 0.75, 0.0, 1.0, 0.25, -1.0, 0.0, -0.5, -1.0, 1.0, 0.25, 0.5, 0.25, 0.25, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.75, -0.75, 0.25, -0.5, 1.0, 1.0, -0.75, 0.75, 0.75, 0.0, -0.5, 1.0, -1.0, -0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 0.5, -0.5, 0.75, 0.5, 0.25, 1.0, 0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -1.0, 0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, 1.0, -0.25, 1.0, 0.0, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 0.75, 0.25, -1.0, 0.0, -1.0, 0.5, -0.5, -0.75, 1.0, ]);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    texture200.destroy();
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.0, -1.0, -0.25, -0.75, 0.25, -0.25, 0.5, 0.0, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.5, -1.0, 0.5, 0.0, 1.0, 0.75, 0.25, 0.25, 1.0, -0.75, -0.75, 1.0, -0.5, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, -1.0, 0.0, -0.25, -0.75, 0.0, -0.75, -0.5, -0.25, -1.0, -0.5, 0.0, 1.0, -0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, 0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.0, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.75, 0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.25, -1.0, 0.25, -0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -1.0, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device40.pushErrorScope("validation");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device50.pushErrorScope("internal");
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture400.destroy();
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device60.destroy();
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const command_buffer402 = command_encoder402.finish();
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device40.pushErrorScope("internal");
    device60.pushErrorScope("internal");
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder501.popDebugGroup();
    
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder2000.executeBundles([])
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder404.insertDebugMarker("mymarker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    texture204.destroy();
    texture301.destroy();
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array4 = new Float32Array([0.75, -1.0, -0.5, -0.75, -1.0, -0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.5, -0.25, 0.25, 0.75, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, 0.75, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.5, 0.5, 1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 1.0, -0.25, 0.25, -0.5, -1.0, 0.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.5, 0.0, 0.25, -0.5, -0.5, 0.25, -1.0, -0.5, -0.25, 1.0, -0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.25, -0.5, -0.25, -0.25, -0.75, 1.0, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, 1.0, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, -0.5, -0.75, 0.75, 0.5, 1.0, 0.25, 0.25, -0.5, 0.0, ]);
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    
    texture201.destroy();
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
    const array5 = new Float32Array([0.75, 0.75, -1.0, 0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 0.75, 1.0, 0.75, -0.75, 0.25, -0.75, -0.75, -0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 0.75, -0.75, 1.0, 0.5, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.5, -1.0, 0.5, -0.75, 0.0, -0.5, -0.5, 0.75, 0.0, 0.25, -1.0, 1.0, -0.75, 0.0, -0.75, 1.0, 1.0, 0.25, 0.0, 0.5, 0.75, 0.75, 0.5, 0.5, 1.0, -0.5, 0.75, 1.0, -1.0, -0.75, -0.5, -0.25, -0.5, -0.75, -1.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.75, -1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 1.0, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, ]);
    render_pass_encoder2000.setStencilReference(1);
    device10.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture202.destroy();
    texture300.destroy();
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    texture203.destroy();
    texture205.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    texture401.destroy();
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder2000.popDebugGroup()
    device20.pushErrorScope("out-of-memory");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    texture500.destroy();
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder301.insertDebugMarker("mymarker");
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    texture300.destroy();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const array6 = new Float32Array([1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 0.5, 0.5, -0.5, 0.75, -1.0, -0.5, 0.75, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -1.0, -0.25, -0.75, -0.5, 0.75, -1.0, 0.75, 0.25, 0.5, 0.25, -1.0, 1.0, -1.0, 0.75, -0.5, -0.25, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, 1.0, -0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -1.0, 1.0, 0.0, 1.0, -1.0, -0.5, -0.25, 0.5, 0.75, -0.25, -0.5, 0.5, 0.5, 0.0, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, -0.75, -0.25, 1.0, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.25, -0.25, -0.75, 1.0, ]);
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setStencilReference(1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    texture501.destroy();
    render_bundle_encoder201.popDebugGroup();
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    texture502.destroy();
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture203.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    texture302.destroy();
    
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    render_bundle_encoder401.popDebugGroup();
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    texture303.destroy();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const array7 = new Float32Array([0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 0.5, 0.75, 0.25, 0.75, -0.75, -1.0, -1.0, 1.0, 0.5, 0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.25, 1.0, 0.25, -0.5, -0.25, -0.5, 0.0, -0.75, -0.75, 1.0, -0.75, 1.0, -0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -0.75, 1.0, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.5, -1.0, 0.25, 1.0, -0.75, 0.0, -1.0, -0.25, -0.5, -1.0, -0.25, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 0.75, -0.75, -0.75, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, 0.5, 0.0, -1.0, 1.0, 0.0, ]);
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    device30.destroy();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.insertDebugMarker("marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    
    
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.insertDebugMarker("mymarker");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    texture208.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    texture503.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.executeBundles([render_bundle_encoder201, ])
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5020.setStencilReference(1);
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2020.executeBundles([render_bundle_encoder201, ])
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const texture_view2071 = texture207.createView({ label: "texture_view2071" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder2030.executeBundles([])
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder4040.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    compute_pass_encoder4050.popDebugGroup()
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture207.destroy();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture209.destroy();
    render_pass_encoder5030.executeBundles([])
    render_bundle_encoder201.insertDebugMarker("marker");
    texture504.destroy();
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array8 = new Float32Array([-1.0, 1.0, 0.75, -0.5, -1.0, -1.0, -0.25, -0.5, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 0.5, 0.75, -1.0, -0.25, 0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 0.0, 1.0, 0.5, 0.5, 0.0, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.75, 1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.5, 0.5, 1.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, 0.5, -0.75, -1.0, 0.25, -0.75, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, 1.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.5, -0.25, 1.0, -0.75, -1.0, 1.0, 0.75, -0.25, -0.5, -0.25, 0.75, -0.75, 0.25, 0.0, 1.0, ]);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder2030.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    
    render_pass_encoder2021.setStencilReference(1);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder2000.setStencilReference(1);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder4010.popDebugGroup()
    device20.destroy();
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
    render_pass_encoder5030.setStencilReference(1);
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder5030.executeBundles([])
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder5030.insertDebugMarker("marker");
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    texture206.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout501]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5040.pushDebugGroup("group_marker");
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5040,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5040.setStencilReference(1);
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder5000.popDebugGroup()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    device50.pushErrorScope("validation");
    
    const texture_view5051 = texture505.createView({ label: "texture_view5051" });
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.destroy();
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    render_bundle_encoder402.popDebugGroup();
    
    
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
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device70.pushErrorScope("validation");
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder4010.popDebugGroup()
    
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder4050.popDebugGroup()
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    texture404.destroy();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder5020.insertDebugMarker("marker");
    texture403.destroy();
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2061,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array9 = new Float32Array([0.75, -0.5, 0.0, 1.0, 1.0, 0.25, -0.25, -0.25, -0.5, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 0.0, -0.25, 0.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 1.0, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, 1.0, 0.75, 0.75, 0.75, -1.0, 0.5, -0.75, 0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.0, 1.0, -0.5, -0.25, 0.5, -1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, 0.5, 0.25, -0.25, 0.5, 1.0, 0.0, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, -0.25, 0.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 0.25, ]);
    const array10 = new Float32Array([0.75, 0.75, 0.5, -0.5, 0.5, 0.0, -0.5, -0.5, 0.0, 0.75, -0.5, 0.5, 0.75, -0.25, 0.0, -0.5, 0.5, -0.25, -1.0, -1.0, -0.25, 0.75, 0.25, -0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.0, -1.0, -0.75, 0.75, 0.25, 0.25, -0.25, 1.0, -0.75, 0.5, -0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 1.0, -0.75, 0.75, -1.0, -1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, -1.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 0.75, -1.0, -1.0, -0.25, -1.0, ]);
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4060.setStencilReference(1);
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder2040.executeBundles([])
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer407 = command_encoder407.finish();
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    render_pass_encoder5040.setStencilReference(1);
    
    render_pass_encoder4060.pushDebugGroup("group_marker");
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const command_buffer405 = command_encoder405.finish();
    const render_pass_encoder4061 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4060.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const array11 = new Float32Array([0.25, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, 0.0, -1.0, 0.25, -0.25, -0.5, -1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 1.0, 0.5, -1.0, 0.0, 0.75, -0.75, -0.5, 0.25, -0.75, 0.75, -0.25, 0.0, -1.0, 0.75, -0.75, 1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, 0.0, 0.25, -1.0, -1.0, 1.0, -0.75, -0.25, 1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, 0.75, 1.0, -0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 1.0, 0.0, -0.5, 0.75, 0.5, -0.5, -0.75, -1.0, 0.5, 0.75, 0.0, 0.0, -0.25, 0.5, 1.0, 0.75, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4060.popDebugGroup();
}