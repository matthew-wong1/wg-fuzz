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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([-1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.25, 0.5, -0.25, 0.75, -0.25, 0.0, 0.5, -0.5, 0.75, 1.0, 0.5, -0.25, 0.5, -0.25, -0.75, -0.75, 0.75, 0.25, 0.75, 0.0, 0.75, 0.5, 1.0, 1.0, 0.25, 0.25, 0.75, -0.75, 0.0, 0.0, 1.0, -1.0, 0.75, 1.0, 0.25, 0.75, 0.75, 0.25, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 1.0, -0.5, 0.5, -1.0, -1.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, -0.5, -0.25, 1.0, -1.0, 0.5, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, -0.5, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, -0.5, -0.25, -0.5, 1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array1 = new Float32Array([-0.5, -0.25, 0.75, -0.25, 1.0, -0.25, -0.75, -0.75, 1.0, 0.0, 0.5, -1.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.75, 0.5, 1.0, 0.5, 0.75, 0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 0.0, -1.0, -1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.25, 0.5, 1.0, 0.25, 0.0, 1.0, 0.0, -0.25, 0.5, -1.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.0, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, 1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.25, -1.0, 0.5, 0.75, 0.0, 1.0, 0.25, 0.75, -0.5, 1.0, 1.0, 1.0, -0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -1.0, 0.5, 0.75, -1.0, 0.25, -0.5, -0.25, -0.75, -0.5, -1.0, -0.25, 0.5, ]);
    device10.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const array2 = new Float32Array([-0.25, -0.25, 1.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.25, 1.0, -0.5, 0.5, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -0.25, 0.75, 0.0, 0.25, -0.25, -0.75, 0.0, 0.25, -0.5, -0.5, -0.75, 0.5, 0.5, 0.75, -0.75, -0.75, 0.25, -0.25, 1.0, -1.0, 0.25, 1.0, -0.5, 1.0, -0.25, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, -0.75, -1.0, 0.0, -0.75, 0.5, 0.5, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, 0.5, -0.5, -1.0, 0.0, 0.25, -0.5, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer101 = command_encoder101.finish();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device30.pushErrorScope("validation");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder300.pushDebugGroup("mygroupmarker")
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("validation");
    
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device30.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_buffer301 = command_encoder301.finish();
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler007 = device00.createSampler( { label: "sampler007" } );
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const array3 = new Float32Array([0.5, 1.0, 0.0, -1.0, 0.0, 0.5, -0.75, 1.0, 0.25, -0.75, -0.25, -0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 0.75, 0.0, -0.75, -0.25, -0.75, -0.75, 0.0, 1.0, 0.0, -0.5, -0.25, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.75, -0.5, 0.5, -1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, 0.0, -0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.75, 0.0, -0.75, 0.75, -0.5, -1.0, 1.0, -1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.25, -0.75, -0.25, 0.75, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer103 = command_encoder103.finish();
    render_bundle_encoder202.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device50.pushErrorScope("validation");
    device70.pushErrorScope("validation");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder701.pushDebugGroup("mygroupmarker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.pushErrorScope("out-of-memory");
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const command_buffer700 = command_encoder700.finish();
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
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
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
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    const command_buffer203 = command_encoder203.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device60.pushErrorScope("internal");
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
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device30.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([-1.0, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, 0.5, -0.5, -0.75, 0.75, 0.25, -0.25, 0.75, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 0.0, -0.5, 0.25, -0.5, -0.75, -1.0, -0.75, 0.0, 1.0, -0.75, -0.5, 0.5, 0.75, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.75, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -0.5, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.5, 0.25, -1.0, -0.75, 0.0, -0.5, 1.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.0, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, ]);
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder703.pushDebugGroup("mygroupmarker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 0.25, 0.5, -0.75, 0.75, -0.25, 0.25, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, -0.75, 0.0, -0.75, 1.0, 1.0, -1.0, -0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.75, -0.5, 0.0, -0.75, -1.0, 0.5, 0.75, -0.5, -0.25, -0.75, 0.25, 0.5, -0.5, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, 1.0, 1.0, 0.5, 0.75, 0.5, 0.75, 0.5, -0.75, 0.0, 0.0, 0.0, -0.75, 0.25, 0.5, -1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, 0.75, -1.0, -0.25, -0.5, 0.5, 0.25, 0.5, 1.0, -0.5, 0.0, -0.25, -0.25, ]);
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_buffer105 = command_encoder105.finish();
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder305.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device70.pushErrorScope("internal");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    device10.pushErrorScope("out-of-memory");
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout402]
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_buffer306 = command_encoder306.finish();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const command_buffer308 = command_encoder308.finish();
    device80.pushErrorScope("internal");
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer106 = command_encoder106.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    const command_buffer307 = command_encoder307.finish();
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout303]
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array6 = new Float32Array([0.0, -0.25, -0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, -0.25, 0.75, 1.0, -0.25, -0.5, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, 1.0, -0.25, -0.5, -1.0, -1.0, 1.0, -0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 1.0, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, -0.75, -0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.75, -0.75, -0.25, 1.0, 0.0, 0.5, 0.5, -0.5, 0.75, 0.75, 0.5, 0.25, 0.5, -1.0, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, -0.75, 0.5, -0.75, -0.5, 1.0, 1.0, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.0, 0.25, -0.25, 0.0, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout305]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    const command_buffer107 = command_encoder107.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer704 = command_encoder704.finish();
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout305]
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
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
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
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device60.pushErrorScope("internal");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer900 = command_encoder900.finish();
    const command_buffer500 = command_encoder500.finish();
    const command_buffer309 = command_encoder309.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}