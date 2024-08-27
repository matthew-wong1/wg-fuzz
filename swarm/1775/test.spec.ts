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
    
    
    
    
    const array0 = new Float32Array([0.5, 0.75, 0.25, -1.0, 0.25, 0.5, 0.0, 0.5, -0.75, 0.25, -0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.75, 0.75, 0.5, 0.25, 1.0, 0.75, 0.5, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.5, 0.75, -1.0, -0.25, -0.75, 0.75, -0.75, -0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 0.0, 0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, -0.5, 0.5, -0.75, 1.0, -0.25, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.0, -0.75, 0.0, -1.0, -1.0, 0.5, 0.5, 0.25, ]);
    
    const array1 = new Float32Array([0.25, -0.25, 0.25, 1.0, 1.0, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.75, 0.0, 0.0, 0.5, -0.5, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -1.0, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, -1.0, 1.0, -0.5, 0.75, 0.25, -0.5, -0.5, -1.0, -0.25, 0.5, 0.75, 1.0, -1.0, 0.0, 0.75, 0.5, -0.75, -0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 0.75, -0.75, 0.0, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, 0.0, -0.75, -0.5, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.pushErrorScope("validation");
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, 0.0, 0.0, 1.0, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, 0.75, 1.0, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, 0.5, -0.5, 0.5, -1.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, -0.75, 0.0, 0.0, 0.75, 0.5, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.25, -0.5, -0.75, -1.0, -0.5, -0.5, -1.0, -0.25, 0.5, 0.0, 0.25, 0.25, -0.75, -0.75, -0.25, 0.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.75, 0.5, -0.25, 0.0, 0.75, -0.5, 0.5, 0.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, -0.25, 0.0, 0.25, -0.25, 0.0, -0.75, -0.75, -0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.pushErrorScope("out-of-memory");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder301.popDebugGroup()
    
    
    
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
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    const command_buffer300 = command_encoder300.finish();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_buffer302 = command_encoder302.finish();
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([1.0, 0.0, 1.0, -0.75, -0.75, 0.5, 1.0, 0.0, -0.5, 0.0, -0.75, 0.5, -0.25, -0.5, -0.5, -0.5, 1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.25, 0.5, 0.75, -1.0, 1.0, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, -0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, -0.25, 0.25, -0.25, 0.25, -0.5, -0.25, -0.75, 0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 0.75, -0.25, 1.0, 0.25, 0.75, -0.75, 0.5, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, 1.0, 0.75, 0.75, 1.0, -0.5, -0.5, 1.0, -1.0, 1.0, -0.5, 0.25, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, 0.5, 0.75, -0.75, 1.0, ]);
    device30.pushErrorScope("out-of-memory");
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
    device50.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, 1.0, -0.5, -1.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, 1.0, 0.75, -0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 0.75, 0.5, 0.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.0, -0.75, 0.25, 0.5, -1.0, 0.5, -0.25, 0.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 0.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.0, -0.5, 0.25, 0.0, -0.5, -0.75, 0.5, -1.0, 1.0, -0.25, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.submit([command_buffer302, ]);
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.25, -0.25, -0.75, 0.0, -0.75, 0.75, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.75, 0.0, -0.75, -0.25, -0.5, -0.25, -0.25, -1.0, 0.75, -0.75, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 0.5, 0.0, 1.0, -0.75, -0.5, 1.0, 0.5, -0.5, -1.0, -0.5, 0.75, 0.0, 0.25, -0.25, 1.0, -1.0, -1.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.5, 0.75, 0.25, -0.25, -0.75, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.0, 0.75, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const command_buffer301 = command_encoder301.finish();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer300.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
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
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const command_buffer303 = command_encoder303.finish();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    buffer500.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.25, 0.75, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, 0.25, -0.75, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.5, 0.0, 0.75, 1.0, 1.0, -0.5, 0.75, 0.75, -0.5, -0.5, 1.0, 0.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.25, -0.5, -1.0, 0.75, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.25, 0.25, 1.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.75, -0.25, 0.0, 1.0, -0.75, -0.5, 1.0, 0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.5, 0.75, 0.0, -1.0, ]);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    texture400.destroy();
    
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer402.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("out-of-memory");
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
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    device40.destroy();
    
    
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
    buffer302.destroy()
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer304.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.pushErrorScope("out-of-memory");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder500.insertDebugMarker("mymarker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder500.insertDebugMarker("marker");
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
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
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
    
    buffer301.destroy()
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const command_buffer500 = command_encoder500.finish();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const array7 = new Float32Array([1.0, 1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.25, 0.25, -0.75, -0.75, 0.75, -0.5, 0.5, 0.75, -0.5, 0.75, 0.75, 0.75, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.75, -0.5, -0.5, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, 0.75, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, 0.5, 0.75, 0.0, -0.75, 0.25, -1.0, 0.0, 0.25, 0.0, -0.5, 0.5, -0.75, -0.75, 0.75, 0.5, 1.0, -0.75, -1.0, 0.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.25, -0.5, 0.25, -1.0, -0.5, -0.25, -1.0, -1.0, 0.25, 0.75, -0.5, -0.5, -1.0, 0.75, 0.5, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, -1.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.75, ]);
    buffer200.destroy()
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer303.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer501.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    buffer305.destroy()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout305]
    });
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder305.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder305.insertDebugMarker("mymarker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder3040.insertDebugMarker("marker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder5010.pushDebugGroup("group_marker")
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
    compute_pass_encoder5010.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout305]
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    
    command_encoder501.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    texture500.destroy();
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const command_buffer502 = command_encoder502.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
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
    command_encoder306.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3040.insertDebugMarker("marker")
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device70.pushErrorScope("validation");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("validation");
    
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout502]
    });
    command_encoder306.insertDebugMarker("mymarker");
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    command_encoder306.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    command_encoder501.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device70.pushErrorScope("out-of-memory");
    
    
    buffer401.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer503 = command_encoder503.finish();
    
    texture700.destroy();
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer301.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    device50.pushErrorScope("out-of-memory");
    compute_pass_encoder3060.popDebugGroup()
    render_bundle_encoder303.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, 0.0, -0.25, -0.75, 0.25, -0.5, -0.5, -0.75, 0.75, -0.75, -0.75, -1.0, 0.5, -0.5, -0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.5, -1.0, 0.25, 1.0, 0.5, -0.5, -0.25, -0.25, -0.25, 0.25, -0.5, 0.0, 1.0, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, -0.5, 0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, 0.25, -0.75, -1.0, 0.0, -0.75, 0.0, 0.0, -0.5, 0.0, 0.75, -0.5, 0.25, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.0, 1.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.5, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.25, -0.5, 0.75, 0.25, 0.75, -0.75, 0.0, -0.75, -0.75, 0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 0.0, ]);
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout304]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    compute_pass_encoder3040.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder3050.popDebugGroup()
    
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    device60.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const array9 = new Float32Array([0.75, -0.5, 0.0, -0.25, 1.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, 0.25, -0.25, 0.75, 1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.5, -0.25, -1.0, 0.5, 1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -0.5, 0.5, -0.25, -0.5, -0.75, 0.0, -0.25, 0.75, 0.25, -1.0, -0.5, 0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 1.0, -0.75, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, 1.0, 1.0, 1.0, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, -0.25, -0.75, -1.0, ]);
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder3050.popDebugGroup()
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout500]
    });
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    command_encoder504.pushDebugGroup("mygroupmarker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
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
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout303]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout305]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder303.pushDebugGroup("group_marker");
    compute_pass_encoder3040.popDebugGroup()
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    
    command_encoder504.clearBuffer(buffer500);
    render_bundle_encoder303.insertDebugMarker("marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    command_encoder700.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    texture300.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device30.queue.submit([command_buffer301, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    device80.destroy();
    
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    command_encoder700.popDebugGroup()
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    command_encoder505.clearBuffer(buffer502);
    command_encoder506.pushDebugGroup("mygroupmarker")
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer502.destroy()
    texture301.destroy();
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5040.insertDebugMarker("marker")
    const render_bundle_encoder304 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder304",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    
    
    const array10 = new Float32Array([0.75, -0.5, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, 0.5, -0.75, -1.0, -1.0, 0.0, 0.5, 0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, -1.0, 0.0, 0.75, -0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 1.0, -0.25, 1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 0.75, -0.5, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, 0.25, 0.25, 1.0, 0.5, -0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 0.0, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, ]);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    compute_pass_encoder3070.pushDebugGroup("group_marker")
    buffer701.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder506.popDebugGroup()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture302.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const command_buffer505 = command_encoder505.finish();
    compute_pass_encoder3060.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    
    
    buffer302.destroy()
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder3060.insertDebugMarker("marker")
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder304.insertDebugMarker("marker");
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder506.pushDebugGroup("mygroupmarker")
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    device20.destroy();
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout307]
    });
    
    render_bundle_encoder304.insertDebugMarker("marker");
    compute_pass_encoder3070.popDebugGroup()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder5070 = command_encoder507.beginComputePass({ label: "compute_pass_encoder5070" });
    
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout504]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    command_encoder506.popDebugGroup()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    device100.pushErrorScope("internal");
    
    buffer1000.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3070.insertDebugMarker("marker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3040.popDebugGroup()
    device40.queue.submit([]);
    const command_buffer506 = command_encoder506.finish();
    compute_pass_encoder5040.popDebugGroup()
    device100.queue.submit([]);
    command_encoder501.popDebugGroup()
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3060.popDebugGroup()
    const command_buffer307 = command_encoder307.finish();
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder5040.popDebugGroup()
    device100.queue.submit([]);
    device50.queue.submit([command_buffer502, command_buffer505, command_buffer506, ]);
    compute_pass_encoder5040.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device100.queue.submit([]);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer304, ]);
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    compute_pass_encoder3060.popDebugGroup()
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder3060.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device30.queue.submit([command_buffer301, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device70.queue.submit([]);
    const command_buffer507 = command_encoder507.finish();
    compute_pass_encoder5070.popDebugGroup()
    device50.queue.submit([command_buffer507, ]);
    device30.queue.submit([command_buffer302, ]);
    command_encoder701.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
    device50.queue.submit([command_buffer507, ]);
    command_encoder504.popDebugGroup()
    compute_pass_encoder5040.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
}