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
    const array0 = new Float32Array([-0.5, 0.5, -0.75, -0.25, -1.0, 0.25, -0.75, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 0.25, 0.75, -1.0, -0.5, -0.5, -0.25, -0.25, 0.0, 1.0, -0.5, -1.0, 0.0, -0.25, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.0, 0.0, 0.75, 0.5, 0.75, 0.0, -0.5, -0.25, 0.25, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, 0.0, 1.0, 0.25, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, 0.0, -1.0, -1.0, 0.75, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array1 = new Float32Array([0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -0.25, -0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.75, 0.25, 0.5, 0.75, 0.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.5, -0.75, 0.5, 0.75, 0.25, -0.5, -1.0, 0.75, 0.0, -0.25, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.75, -0.5, 0.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.75, -0.25, 0.0, 0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.5, 0.0, 0.5, -0.5, 1.0, -1.0, 0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, -0.25, 1.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.5, ]);
    const array2 = new Float32Array([0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 0.25, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, -0.5, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, -0.5, 0.75, -1.0, 0.25, 0.0, 1.0, -0.25, -1.0, -0.25, 0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 0.25, 0.75, 0.5, -0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, -0.25, 0.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.0, 0.0, 0.5, -0.75, 1.0, -1.0, -1.0, 0.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, -0.5, 0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.5, 0.5, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
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
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    texture101.destroy();
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer100.destroy()
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder100.popDebugGroup();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const command_buffer100 = command_encoder100.finish();
    const array3 = new Float32Array([-1.0, 0.0, 0.0, 0.5, -1.0, 0.25, 0.5, 0.0, 0.75, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 1.0, 0.5, -0.25, -0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, -0.25, -1.0, 0.25, -1.0, 0.5, 0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.25, -0.5, 0.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.75, 0.75, 1.0, -1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 0.25, -1.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -1.0, 0.25, -0.25, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.submit([command_buffer100, ]);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer101.destroy()
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([1.0, -0.25, 0.25, -0.5, 0.25, 0.0, 0.0, 0.75, -0.75, 0.0, 0.75, 0.25, -0.75, 0.0, 0.25, -0.5, 1.0, -1.0, 0.0, 0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, -1.0, 1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, 0.25, -0.25, 0.75, 0.75, -1.0, 0.0, -1.0, -0.25, -0.75, 0.5, 1.0, 0.25, -0.5, -0.75, 0.75, -0.5, 0.75, -0.25, 0.25, 0.75, -1.0, 0.25, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 0.5, -0.25, -1.0, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, -0.5, -0.75, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device30.destroy();
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
    
    
    const array5 = new Float32Array([1.0, -0.75, -0.75, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5, 0.0, 0.25, -0.5, -1.0, -0.75, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.25, 1.0, -0.75, 1.0, -1.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -1.0, -0.25, 0.0, -0.5, 1.0, 0.5, 0.75, -0.25, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, 0.75, 0.0, -0.75, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 1.0, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 1.0, 0.0, 1.0, 0.5, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
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
    device30.queue.submit([]);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer201.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    texture600.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device50.pushErrorScope("internal");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    texture601.destroy();
    
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    command_encoder400.pushDebugGroup("mygroupmarker")
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
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("validation");
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
    
    buffer101.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.submit([]);
    
    const command_buffer600 = command_encoder600.finish();
    const command_buffer200 = command_encoder200.finish();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer501 = command_encoder501.finish();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder6010.executeBundles([])
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
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
    
    device40.queue.submit([]);
    render_pass_encoder6010.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    texture601.destroy();
    render_pass_encoder6010.setStencilReference(1);
    
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture502.destroy();
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    buffer500.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer502.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder6010.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer505.destroy()
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    texture501.destroy();
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    texture400.destroy();
    texture503.destroy();
    device20.queue.submit([command_buffer201, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer503.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture603.destroy();
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device80.destroy();
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device20.queue.submit([command_buffer200, ]);
    texture602.destroy();
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder501.popDebugGroup();
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    
    
    
    buffer504.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device70.destroy();
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder6010.executeBundles([])
    texture504.destroy();
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer501.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder501.popDebugGroup();
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
    render_pass_encoder5020.executeBundles([])
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    device60.pushErrorScope("out-of-memory");
    
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5020.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture505 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder401.clearBuffer(buffer400);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer402, ]);
    command_encoder502.popDebugGroup()
    buffer601.destroy()
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder401.clearBuffer(buffer401);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer401 = command_encoder401.finish();
    
    device50.queue.submit([command_buffer501, ]);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.submit([command_buffer402, ]);
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer601 = command_encoder601.finish();
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_pass_encoder5030.setStencilReference(1);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder403.clearBuffer(buffer401);
    render_pass_encoder5030.insertDebugMarker("marker");
    
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    
    device20.queue.submit([]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder6010.insertDebugMarker("marker");
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    command_encoder403.clearBuffer(buffer401);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6040 = texture604.createView({ label: "texture_view6040" });
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    texture506.destroy();
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture604.destroy();
    render_pass_encoder6020.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6020.insertDebugMarker("marker");
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    buffer202.destroy()
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    texture505.destroy();
    
    const array6 = new Float32Array([-0.25, 1.0, -1.0, 0.5, 0.0, 0.0, -0.5, 0.25, -0.75, -1.0, -0.5, 0.75, -0.25, -0.25, 0.25, 0.25, 0.25, 0.5, -1.0, -0.75, 0.25, -0.25, 1.0, 0.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.25, 1.0, -1.0, 0.0, -0.25, 1.0, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, 0.5, 0.0, -1.0, -0.25, 0.75, 0.25, 0.0, -0.25, -0.25, 0.5, 0.25, 1.0, -0.5, 0.75, -0.25, -0.25, 1.0, -1.0, 0.5, 0.5, 0.75, 0.25, 0.0, -0.25, 0.5, 0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 0.25, 0.5, 1.0, 0.25, -1.0, 0.0, -0.75, -1.0, 0.0, 0.0, 0.75, -0.5, -0.75, -0.5, 0.0, 0.0, 0.25, -0.25, 1.0, 0.75, 0.25, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    
    command_encoder400.clearBuffer(buffer401);
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    device40.queue.submit([command_buffer401, ]);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
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
    buffer400.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder6010.setStencilReference(1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder6010.setStencilReference(1);
    command_encoder403.clearBuffer(buffer401);
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.executeBundles([])
    buffer506.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout203]
    });
    const array7 = new Float32Array([0.75, 0.0, 0.75, -1.0, -0.25, 0.75, -0.5, -0.5, 0.25, -0.25, 0.25, -1.0, 0.0, 0.0, 0.5, 0.5, -0.75, 0.75, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, 0.5, 0.25, -0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.75, -0.5, -1.0, 0.0, 0.25, 1.0, 0.0, -0.25, -1.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.25, -0.5, 0.25, 0.5, -0.25, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, -1.0, 1.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.75, -1.0, -0.75, -1.0, -0.5, -1.0, 1.0, 0.25, 0.5, 0.5, -0.25, -0.75, 0.25, 1.0, -0.5, 0.75, -0.25, -0.75, 0.75, -0.25, -0.5, 0.25, -1.0, -0.75, 0.75, ]);
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder5020.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer602 = command_encoder602.finish();
    const command_buffer503 = command_encoder503.finish();
    device40.queue.submit([command_buffer403, ]);
    device20.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder5020.popDebugGroup();
    device50.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    command_encoder400.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
}