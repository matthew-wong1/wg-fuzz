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
    
    const array0 = new Float32Array([-0.75, -0.75, -0.75, -0.5, 0.75, -1.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.0, -0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.75, 0.25, 0.75, 0.25, 0.25, -0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.5, 0.75, -1.0, 0.5, 1.0, 0.5, -0.25, -0.75, -1.0, 0.5, -0.5, 0.25, -0.25, -0.5, -0.25, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, 0.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    device30.pushErrorScope("internal");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const array1 = new Float32Array([-0.75, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, 0.25, -1.0, 1.0, -1.0, 0.5, -0.5, -0.25, -0.5, 0.75, 0.0, -0.75, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, 0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 0.25, 0.5, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.75, 0.75, -0.25, -0.75, 0.5, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.75, 1.0, -1.0, -1.0, -0.25, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.5, 0.0, 0.75, -0.75, 0.75, 1.0, 0.5, 0.5, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, 1.0, -0.75, 0.75, -0.25, 0.0, 1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.25, -0.75, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, -0.25, -0.25, -1.0, 0.75, -0.25, -0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 0.25, 0.5, 1.0, 1.0, -0.25, 1.0, 0.25, 0.25, 0.25, 0.75, 0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 1.0, 0.25, 0.0, 0.75, 0.75, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, -1.0, -0.75, 1.0, -0.5, ]);
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    command_encoder101.popDebugGroup()
    
    const array3 = new Float32Array([-0.25, 0.0, -0.5, -1.0, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.5, -0.25, 1.0, 0.5, -0.25, 1.0, -0.5, -0.5, -0.25, 1.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -1.0, 0.0, 0.0, 0.25, -0.25, -0.25, -0.5, -0.25, 1.0, 0.25, -1.0, 0.25, -0.25, -0.75, 0.0, -0.25, -0.75, 0.5, 0.5, -0.5, 0.25, 0.5, 0.25, -0.5, -0.25, 0.0, 1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, -0.75, 1.0, 0.25, 0.75, 1.0, -0.75, 0.5, 0.0, -0.25, 0.5, 1.0, 0.0, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.25, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    query100.destroy()
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    device10.pushErrorScope("out-of-memory");
    query002.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder300.pushDebugGroup("mygroupmarker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    query300.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query102.destroy()
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
    query005.destroy()
    query004.destroy()
    query000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder100.insertDebugMarker("mymarker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    query000.destroy()
    
    query002.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query301.destroy()
    query301.destroy()
    device40.pushErrorScope("internal");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query005.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query002.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    query100.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const array4 = new Float32Array([0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, 0.25, -1.0, -0.25, 0.0, -0.75, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, -1.0, 0.25, 0.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.25, -0.75, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, 1.0, 1.0, -1.0, 0.5, 1.0, 0.75, -0.5, -0.75, 0.25, 0.0, 0.25, 0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -1.0, -1.0, -1.0, 0.75, -0.25, 1.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, 0.25, -0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const array5 = new Float32Array([-1.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.0, -0.5, 0.5, 0.0, -1.0, -0.25, 0.25, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 0.0, 0.75, -1.0, -0.25, 1.0, 0.0, 0.5, -0.75, 1.0, -0.75, 0.0, 0.25, 0.0, -0.75, -1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, -1.0, 0.5, 0.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, 0.75, -0.75, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 0.75, 0.0, 0.0, -0.25, -0.75, -1.0, -0.5, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query402.destroy()
    query100.destroy()
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
    query006.destroy()
    
    query007.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder304.insertDebugMarker("mymarker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    query001.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query102.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder302.insertDebugMarker("mymarker");
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query401.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query300.destroy()
    query004.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    command_encoder305.pushDebugGroup("mygroupmarker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    query102.destroy()
    query001.destroy()
    
    query001.destroy()
    query400.destroy()
    
    query100.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
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
    query301.destroy()
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
    query001.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    device50.pushErrorScope("out-of-memory");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    query004.destroy()
    query000.destroy()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device70.pushErrorScope("out-of-memory");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query105.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
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
    
    query003.destroy()
    command_encoder103.popDebugGroup()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query105.destroy()
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
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    query301.destroy()
    
    const sampler3010 = device30.createSampler( { label: "sampler3010" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    query401.destroy()
    query600.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query402.destroy()
    query101.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.pushDebugGroup("mygroupmarker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query005.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query004.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query004.destroy()
    query006.destroy()
    query004.destroy()
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    command_encoder400.insertDebugMarker("mymarker");
    query300.destroy()
    
    
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query301.destroy()
    query103.destroy()
    query402.destroy()
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    query002.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    query103.destroy()
    
    command_encoder401.insertDebugMarker("mymarker");
    
    query402.destroy()
    
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    device60.pushErrorScope("validation");
    query000.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    query004.destroy()
    query106.destroy()
    query004.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder305.insertDebugMarker("mymarker");
    query501.destroy()
    
    
    
    query401.destroy()
    
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    query106.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler3011 = device30.createSampler( { label: "sampler3011" } );
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
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
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const array6 = new Float32Array([0.0, 0.75, 1.0, -0.5, -0.25, 0.25, 1.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.25, -1.0, 0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 0.5, -0.25, 0.75, -0.75, 1.0, 0.25, -0.75, -0.75, 1.0, -0.5, -0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.5, -0.5, -0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.75, -0.75, 0.25, 0.5, 0.5, 0.75, -0.25, 0.0, 0.75, 0.75, 0.0, 0.5, -0.5, 0.25, -0.75, -0.25, 1.0, -0.75, 0.75, -0.25, -0.75, -1.0, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, 0.5, -1.0, -0.25, -0.75, 0.5, -0.5, 0.25, 0.0, 0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -0.75, 0.0, 0.25, -0.25, -1.0, -0.25, 0.75, -0.25, -1.0, ]);
    query004.destroy()
    
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    query104.destroy()
    query005.destroy()
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder305.insertDebugMarker("mymarker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    command_encoder306.insertDebugMarker("mymarker");
    command_encoder306.insertDebugMarker("mymarker");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder307.insertDebugMarker("mymarker");
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    query003.destroy()
    
    command_encoder104.insertDebugMarker("mymarker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query006.destroy()
    
    
    query400.destroy()
    query500.destroy()
    
    query301.destroy()
    const array7 = new Float32Array([-0.25, 0.25, 0.5, -0.75, -0.25, 1.0, -1.0, 0.25, 0.75, -1.0, 1.0, -1.0, 0.5, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, -1.0, -0.5, 0.0, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.5, 0.25, 0.5, 0.75, -0.5, -0.25, -1.0, 0.0, 1.0, 1.0, -0.5, 0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -0.75, 0.25, -0.25, -1.0, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, 0.5, -0.25, 0.5, 0.5, 0.0, 0.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 1.0, 1.0, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, -0.5, -0.5, 0.0, -0.75, 0.75, 0.0, ]);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    query103.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query301.destroy()
    query002.destroy()
    command_encoder800.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([-0.75, 1.0, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, 0.75, 1.0, -0.75, 1.0, 1.0, -1.0, 0.0, 0.25, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, -0.25, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, 1.0, 0.25, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.5, -0.75, 1.0, 0.25, -0.25, 0.0, -0.75, -1.0, 1.0, -1.0, 0.25, 0.5, 0.5, 0.0, -0.25, 0.75, 0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 0.5, -0.5, -1.0, 0.0, 1.0, -0.75, -0.75, 0.25, 0.0, 1.0, -0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -0.75, 0.75, -0.5, 1.0, -0.25, 0.75, 0.5, -0.75, ]);
    query008.destroy()
    query007.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
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
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    query502.destroy()
    query106.destroy()
    query103.destroy()
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder307.pushDebugGroup("mygroupmarker")
    
    query402.destroy()
    query004.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    query007.destroy()
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query105.destroy()
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const array9 = new Float32Array([-0.75, 0.75, 0.0, -1.0, -1.0, -1.0, -0.75, 0.5, -0.75, -0.75, -0.25, 0.75, -0.5, 0.0, -1.0, 0.5, 0.5, -0.75, 0.5, -0.75, 0.25, 0.75, 0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, -0.75, -0.75, 1.0, 1.0, 0.75, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, 0.5, 1.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.75, 1.0, 1.0, 0.25, -1.0, -0.5, -0.25, -0.75, -0.25, -0.75, -1.0, -1.0, 0.25, 1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, -0.5, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, 0.0, -0.5, 0.75, ]);
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
    
    
    query106.destroy()
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
    command_encoder306.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
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
    query102.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.insertDebugMarker("mymarker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query005.destroy()
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const array10 = new Float32Array([0.0, 0.0, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.0, -0.25, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.0, 0.25, -0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 0.5, 0.0, 1.0, 0.75, 0.0, 0.75, 1.0, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 0.25, 0.5, -1.0, 0.25, 0.0, 0.0, -0.75, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -0.75, -0.5, 0.75, 0.75, 1.0, -1.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, -1.0, 0.5, ]);
    query004.destroy()
    query500.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query100.destroy()
    
    command_encoder900.pushDebugGroup("mygroupmarker")
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    query007.destroy()
    command_encoder701.pushDebugGroup("mygroupmarker")
    command_encoder701.popDebugGroup()
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    command_encoder307.insertDebugMarker("mymarker");
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    command_encoder502.insertDebugMarker("mymarker");
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query001.destroy()
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    query005.destroy()
    query300.destroy()
    query101.destroy()
    query003.destroy()
    query105.destroy()
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    query003.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    query303.destroy()
    command_encoder306.insertDebugMarker("mymarker");
    query502.destroy()
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    query500.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    query007.destroy()
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    command_encoder307.insertDebugMarker("mymarker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query002.destroy()
    const array11 = new Float32Array([0.5, -1.0, 0.0, -0.75, 0.5, 0.0, 1.0, 0.25, 0.0, 0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, 0.25, 0.5, 1.0, -0.5, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 1.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, -0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, 0.5, -0.75, -0.75, -0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 1.0, -0.25, -0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.75, -0.5, 1.0, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, -1.0, ]);
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    query007.destroy()
    query000.destroy()
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    query103.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
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
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    query500.destroy()
    query502.destroy()
    command_encoder007.pushDebugGroup("mygroupmarker")
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    
    
    const array12 = new Float32Array([0.25, -0.5, 0.5, 0.5, 0.75, -1.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 0.0, -0.5, 0.0, 0.75, 0.25, 1.0, -0.25, 0.25, 1.0, -0.75, 0.5, 0.75, 0.5, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 1.0, 0.5, -0.75, -0.25, 1.0, -0.75, 0.75, 0.25, -0.5, 1.0, -1.0, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 0.25, -0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.75, -1.0, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, -1.0, -0.25, -0.5, ]);
    command_encoder502.popDebugGroup()
    command_encoder900.popDebugGroup()
    command_encoder007.popDebugGroup()
}