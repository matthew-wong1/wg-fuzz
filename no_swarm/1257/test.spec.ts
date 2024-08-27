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
    
    const array0 = new Float32Array([0.25, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, -0.75, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, 1.0, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.5, 0.0, 0.25, -0.75, -1.0, -0.75, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 1.0, -1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, -1.0, -0.5, 0.0, -0.25, -1.0, 0.75, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, -0.25, 0.0, -1.0, 0.25, -1.0, -1.0, -0.5, 0.75, 0.25, 0.75, -0.5, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, 0.25, -0.75, 0.25, -0.25, -0.75, -0.75, -0.75, -0.25, -0.25, -0.25, -0.5, 0.75, 1.0, 0.5, ]);
    const array1 = new Float32Array([0.5, 1.0, 0.75, 0.0, 1.0, 0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.5, -0.5, 0.5, -0.75, 0.5, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, -0.75, 0.75, 0.5, -0.5, -0.25, -0.25, 0.75, -0.5, -0.5, 0.5, 0.5, 0.25, -0.25, 0.5, -0.75, 0.5, 0.75, -0.75, 1.0, 0.75, -0.75, 1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 0.0, -1.0, 0.5, 0.0, 0.0, 0.5, 1.0, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 1.0, -0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.0, -0.25, -1.0, 0.5, -0.25, 0.0, -1.0, 0.25, -0.5, -1.0, ]);
    const array2 = new Float32Array([-0.5, -0.25, 0.25, 0.75, 1.0, -0.5, 0.0, -0.25, -1.0, 1.0, -0.75, 0.5, -0.5, -0.75, 0.5, 0.75, -0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.0, 0.0, 1.0, 0.0, 0.0, 0.5, -0.75, -0.5, -1.0, -0.5, 0.25, 0.75, 0.5, 0.25, -0.5, 0.75, -1.0, 0.5, 0.0, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -1.0, -0.75, -0.25, 0.25, -1.0, 0.75, -0.25, 0.5, 0.0, 0.5, -1.0, 0.0, 0.5, -0.25, -1.0, -1.0, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, 1.0, 1.0, 0.0, -0.25, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.75, -0.75, -0.5, 0.5, 1.0, ]);
    
    
    const array3 = new Float32Array([1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, 0.0, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.5, 0.25, 1.0, -1.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, -0.5, 0.75, 0.75, 0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, 0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, -0.75, 0.5, 1.0, -0.25, 1.0, 0.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.5, 0.75, 0.25, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([1.0, -0.25, 0.0, 0.0, 0.75, -0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.75, 0.75, 0.75, 0.5, -0.25, 1.0, 0.25, 1.0, 0.25, -0.25, 0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, -1.0, 0.25, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -0.75, -0.75, 0.0, -0.75, -0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, 0.5, -1.0, 0.25, -1.0, 0.5, 0.25, 0.5, -0.5, -0.5, 0.0, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, 1.0, 0.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.0, 0.25, 0.5, 0.0, 0.75, -0.25, 1.0, -0.75, -0.25, 0.5, 1.0, -0.25, ]);
    
    const array5 = new Float32Array([-0.75, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, -1.0, 0.5, -0.5, -1.0, 0.0, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, 0.5, -1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, 0.5, 0.25, -0.75, -0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, -0.5, -0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -0.5, 0.25, -0.75, -0.25, 0.5, 0.75, -1.0, 0.5, 0.5, -0.5, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.5, 1.0, 0.75, -0.75, -1.0, 0.0, -1.0, 1.0, 1.0, 0.25, 0.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 1.0, 0.25, -0.75, 0.25, 0.75, -0.5, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const array6 = new Float32Array([1.0, -0.75, -0.75, 1.0, 0.5, 0.0, 0.25, -0.25, -0.75, 0.25, -0.25, 0.75, 0.0, -1.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.75, 0.0, 0.0, -0.25, -0.5, 0.25, 1.0, -1.0, 0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, -0.5, 0.75, 0.25, -0.25, 1.0, 0.25, 0.0, 1.0, 0.75, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, 0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -0.75, 0.5, -0.75, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array7 = new Float32Array([-1.0, -1.0, -0.25, -0.75, -0.75, -0.75, 0.0, 0.0, -1.0, 0.5, -0.5, -0.75, -0.5, 0.75, 0.75, -1.0, -0.75, -0.75, 0.25, 0.75, 0.75, 0.75, -0.5, 0.25, -0.25, -1.0, -0.75, -0.75, 0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.75, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, 0.5, 0.25, -0.25, 0.75, 0.5, -0.5, -0.5, 0.0, 1.0, 0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.5, 0.25, 0.5, -0.75, -1.0, -1.0, -1.0, -0.5, -0.5, -1.0, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, -1.0, -0.75, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.0, -1.0, -0.75, -0.75, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    buffer200.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    texture200.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer200.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    
    
    
    
    buffer300.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("validation");
    query200.destroy()
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    command_encoder300.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    buffer201.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    texture300.destroy();
    
    const array8 = new Float32Array([-0.5, -0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, 0.75, -0.75, 0.25, 0.75, 0.0, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 0.0, 1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, 0.0, 0.75, 0.25, 0.5, 1.0, 0.25, 0.0, -1.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.0, 0.25, 0.0, -0.25, -1.0, 0.75, 0.25, 0.25, 1.0, -0.25, 0.75, -0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, -0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, -1.0, 1.0, 0.25, 1.0, 0.5, -1.0, -0.25, 1.0, 0.75, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query200.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.popDebugGroup()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_buffer300 = command_encoder300.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const array9 = new Float32Array([-0.75, 1.0, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 0.5, 0.5, 0.75, -0.75, 0.0, 0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 1.0, -0.25, 1.0, -0.25, -1.0, 1.0, -0.25, -0.25, 0.0, 0.75, -1.0, 1.0, 0.75, 0.25, 0.0, -0.5, -0.25, -1.0, -0.25, -0.75, -0.75, 0.25, 0.0, 0.5, 0.0, 0.25, -1.0, -0.25, 0.25, 0.75, 0.5, 0.5, -0.5, -0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.25, 1.0, -0.25, 0.0, -1.0, 0.5, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, -1.0, 1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.5, 0.75, ]);
    
    
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.destroy();
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    command_encoder303.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    render_pass_encoder3010.executeBundles([])
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder303.insertDebugMarker("mymarker");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setStencilReference(1);
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeTexture({ texture: texture303 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder202.popDebugGroup();
    query201.destroy()
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query200.destroy()
    texture202.destroy();
    render_pass_encoder3010.insertDebugMarker("marker");
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    texture303.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer303.destroy()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    buffer302.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module201,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer304.destroy()
    
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder3040.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture100.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3040.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder301.clearBuffer(buffer305);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query300.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
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
    render_pass_encoder3031.setPipeline(render_pipeline300);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer301.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture301.destroy();
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer305.destroy()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_pass_encoder3030.setVertexBuffer(0, buffer306);
    buffer306.destroy()
    
    render_pass_encoder3031.insertDebugMarker("marker");
    buffer202.destroy()
    query300.destroy()
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder300.popDebugGroup();
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
    render_bundle_encoder202.insertDebugMarker("marker");
    query201.destroy()
    device20.destroy();
    
    
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    texture302.destroy();
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer308, 0, array0, 0, array0.length);
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module201,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query300
    });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device20.destroy();
    render_pass_encoder3030.setStencilReference(1);
    
    render_pass_encoder3020.setStencilReference(1);
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([-1.0, -0.25, -1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.75, 0.25, -0.5, -0.75, 0.75, 0.0, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 0.25, -0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 0.5, 0.75, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.75, -0.75, -1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.25, 0.25, 0.0, 0.0, 0.25, 0.0, -0.5, 0.25, -0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.5, -0.5, 0.75, ]);
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3041.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.popDebugGroup()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3041.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder3031.pushDebugGroup("group_marker");
    buffer400.destroy()
    render_pass_encoder3031.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.setPipeline(render_pipeline301);
    render_pass_encoder3031.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.popDebugGroup();
    
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer303.destroy()
    buffer3011.destroy()
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3040.popDebugGroup();
    command_encoder304.insertDebugMarker("mymarker");
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
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
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3041.setPipeline(render_pipeline301);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3010.destroy()
    
    render_pass_encoder3031.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer3010,
        0
    )
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder3030.end();
    
    device30.queue.writeBuffer(buffer3012, 0, array6, 0, array6.length);
    
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3012.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder3041.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    command_encoder301.copyBufferToBuffer(
        buffer3013,
        0,
        buffer304,
        0,
        400
    );
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.setStencilReference(1);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3031.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    query301.destroy()
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    buffer3012.destroy()
    render_pass_encoder3020.setVertexBuffer(0, buffer3012);
    render_pass_encoder3011.setPipeline(render_pipeline300);
    query401.destroy()
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeBuffer(buffer3013, 0, array8, 0, array8.length);
    device40.pushErrorScope("validation");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group303);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3015.destroy()
    command_encoder302.copyBufferToBuffer(
        buffer3013,
        0,
        buffer3010,
        0,
        400
    );
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer3014.destroy()
    {
        await buffer308.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer308.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer308.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3041.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder3031.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3040.setStencilReference(1);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group304);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3040.setVertexBuffer(0, buffer305);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3020.drawIndirect(buffer304, 0);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group306);
    render_pass_encoder3040.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer306);
    render_pass_encoder3031.setVertexBuffer(0, buffer309);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group307);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3022, "uint16");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    compute_pass_encoder3020.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3024, 0);
    render_pass_encoder3040.end();
    device30.queue.submit([]);
    render_pass_encoder3041.setVertexBuffer(0, buffer303);
    render_pass_encoder3010.end();
    render_pass_encoder3041.draw(3);
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group308);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3041.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3011.setVertexBuffer(0, buffer3021);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3041.drawIndirect(buffer306, 0);
    command_encoder304.popDebugGroup()
    render_pass_encoder3011.end();
    render_pass_encoder3041.drawIndirect(buffer3010, 0);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    const command_buffer304 = command_encoder304.finish();
    device40.queue.submit([]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    compute_pass_encoder3020.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndirect(buffer3011, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3024, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3011.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3040.end();
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3031.drawIndirect(buffer3021, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3024, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3031.drawIndirect(buffer3025, 0);
    const command_buffer303 = command_encoder303.finish();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3040.drawIndirect(buffer3023, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3020.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3027, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3028, 0);
    render_pass_encoder3010.drawIndirect(buffer3028, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3015, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3040.end();
    render_pass_encoder3041.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3041.drawIndirect(buffer3027, 0);
    render_pass_encoder3041.drawIndirect(buffer3015, 0);
    device30.queue.submit([command_buffer302, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer406, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3040.drawIndirect(buffer306, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3041.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3011.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3024, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3024, 0);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3028, 0);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3020.drawIndirect(buffer3027, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3010, 0);
    compute_pass_encoder3020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer303, 0);
    render_pass_encoder3041.drawIndirect(buffer3014, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3040.drawIndexed(3);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3029, 0);
}