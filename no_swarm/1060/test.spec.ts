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
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([-1.0, 0.0, 1.0, -1.0, 0.5, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, -1.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.0, -0.25, -0.25, -1.0, 0.25, 0.0, 0.25, 0.75, -0.25, -0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.25, -0.75, -1.0, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, 1.0, 0.0, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, 0.5, 0.5, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.75, 0.75, -1.0, 1.0, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.5, 1.0, 0.25, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, -0.5, -0.75, 1.0, 0.75, 1.0, -1.0, 0.0, -0.25, -1.0, ]);
    const array1 = new Float32Array([1.0, 0.25, 0.0, 0.25, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 0.75, -0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, -0.75, -0.25, -0.75, 0.75, -0.5, 0.75, 1.0, -0.25, 0.5, 1.0, -0.25, 0.5, 0.75, -0.5, 0.75, 1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.25, 0.25, 0.25, 0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.25, 0.0, 0.25, 0.0, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, 0.5, 0.25, 0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 0.0, -1.0, 0.25, -0.75, 0.0, ]);
    
    const array2 = new Float32Array([-0.25, 0.0, 1.0, 0.25, 0.75, -0.5, -0.25, -1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 0.0, -1.0, -0.75, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.5, 0.5, -1.0, -0.5, 0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 0.5, -1.0, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -0.25, -0.75, -0.5, 0.0, -0.75, -1.0, -0.5, 0.25, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, 0.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    device10.destroy();
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([0.5, 0.5, 0.75, -0.75, 1.0, -1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -0.75, -0.5, -1.0, 0.25, 0.25, -0.5, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, -0.5, -1.0, -0.75, -1.0, -0.5, 0.0, 0.0, 0.5, -0.5, 1.0, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.5, 0.0, 0.0, -0.75, 0.5, -0.75, -0.5, -0.5, -0.75, -0.75, -0.25, 0.25, 0.25, 0.5, 0.75, 0.0, 0.5, -1.0, -0.25, -1.0, -1.0, -1.0, -0.5, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 0.25, 0.0, 0.0, -0.5, -0.25, ]);
    
    
    
    
    
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
    const array4 = new Float32Array([0.5, -1.0, -0.75, 1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.0, -0.75, 0.75, -0.25, 0.25, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, -0.25, 0.25, 0.75, -1.0, -1.0, 0.75, -0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -1.0, -1.0, 0.5, -0.75, -1.0, -0.5, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, 0.25, -0.5, 0.0, 0.75, 0.5, 0.0, 0.75, -1.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, -0.25, -0.25, 0.25, 0.75, 1.0, 0.5, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, ]);
    const array5 = new Float32Array([-0.5, 0.5, 0.75, -1.0, -1.0, 0.75, 0.25, -0.25, -0.25, 0.75, 1.0, 0.75, -0.5, 0.5, 0.0, -0.75, 0.75, 0.75, 0.5, 0.5, 1.0, 0.5, -1.0, -0.75, 0.0, -0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, -0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.0, 0.25, 0.5, 0.25, 0.0, -0.5, 1.0, 0.5, -0.25, 0.0, -1.0, 0.75, 0.25, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.5, 1.0, 1.0, 1.0, -0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, 0.75, 0.0, 1.0, -0.5, 0.5, -0.5, ]);
    
    
    
    const array6 = new Float32Array([0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -0.5, 1.0, 0.5, 0.0, -1.0, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, -1.0, 0.5, -0.75, -0.25, 0.0, 0.0, 1.0, 1.0, 0.25, 0.75, 0.75, 0.25, 0.25, -1.0, 0.75, -1.0, 0.75, 0.75, 0.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.5, -0.75, 0.5, 1.0, -0.25, 0.5, 1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -0.5, -0.75, 0.5, 0.75, -1.0, 0.75, -0.25, -0.5, -0.75, -0.75, 0.5, 0.5, -0.25, -0.25, -0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.0, 0.75, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 1.0, 0.0, 0.5, 0.25, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    const command_buffer300 = command_encoder300.finish();
    
    device30.queue.submit([command_buffer300, ]);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const array7 = new Float32Array([0.75, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -0.25, -1.0, 0.75, 0.0, 0.25, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.0, 1.0, 0.25, -0.75, 0.75, 0.75, 0.75, -0.75, -0.75, 1.0, 1.0, -1.0, 0.25, -0.5, -0.5, -1.0, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.5, -0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, 1.0, -0.25, 0.5, -0.75, 0.25, 1.0, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -0.5, 0.0, -0.5, 1.0, 0.25, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, -0.75, ]);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    buffer300.destroy()
    
    const array8 = new Float32Array([-1.0, 0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 1.0, 0.75, 1.0, -0.25, 0.0, 0.75, -0.25, -1.0, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, -0.5, -1.0, -1.0, 0.5, -0.25, 0.5, -0.25, 0.5, -0.5, -0.5, -1.0, 0.25, 0.75, 1.0, -1.0, 0.5, 0.25, 0.25, -0.75, -0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, 0.25, -0.75, -0.75, -1.0, -1.0, -0.5, -0.75, -0.75, -0.25, -0.5, 0.25, 0.25, -0.75, -0.25, -0.75, -1.0, -0.75, -1.0, 1.0, 0.25, -1.0, -1.0, -0.5, 0.5, 0.75, -0.25, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, 0.5, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.clearBuffer(buffer300);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer302 = command_encoder302.finish();
    query300.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    buffer500.destroy()
    device50.pushErrorScope("validation");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const command_buffer400 = command_encoder400.finish();
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder401.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query302.destroy()
    
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    
    buffer301.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.pushErrorScope("validation");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query500.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder303.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture300.destroy();
    command_encoder303.insertDebugMarker("mymarker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    command_encoder303.clearBuffer(buffer301);
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    device50.pushErrorScope("internal");
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    texture501.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device30.pushErrorScope("validation");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    query302.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.queue.submit([command_buffer400, ]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
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
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    texture502.destroy();
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
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
    compute_pass_encoder3010.popDebugGroup()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device30.queue.submit([command_buffer302, ]);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device40.queue.submit([command_buffer400, ]);
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
    
    
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device50.destroy();
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder400.popDebugGroup();
    
    device20.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder3010.popDebugGroup()
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.submit([command_buffer400, ]);
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    buffer400.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    
    buffer302.destroy()
    
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    query302.destroy()
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    query400.destroy()
    
    const array9 = new Float32Array([-1.0, -0.25, -0.75, 1.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.5, -0.5, -0.5, 1.0, 0.5, 0.25, 0.25, -0.75, 0.5, -0.75, 0.0, 0.75, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, 0.75, 0.25, 0.5, -1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.0, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, 0.0, 0.5, -0.5, 0.0, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, -0.5, 1.0, 0.25, -0.75, 0.0, 1.0, 0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.5, -0.5, 0.5, 0.5, -0.25, 0.5, 1.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.5, 0.5, 1.0, ]);
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    command_encoder402.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_buffer402 = command_encoder402.finish();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    buffer402.destroy()
    device30.pushErrorScope("validation");
    device20.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    
    
    const array10 = new Float32Array([-1.0, 0.0, -0.25, 0.25, -0.75, -0.25, 0.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.25, 0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.75, 0.0, 1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -0.25, -0.5, -0.5, 0.75, 0.25, -1.0, 0.75, 0.0, -0.25, -0.75, 0.5, 0.5, 0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, -1.0, -1.0, -1.0, -0.5, -0.25, 0.75, -0.5, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.5, 0.25, ]);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: query500
    });
    query300.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    buffer303.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout404]
    });
    query300.destroy()
    const array11 = new Float32Array([-0.25, -1.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.5, 0.75, -0.25, 0.25, 1.0, -0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 1.0, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 0.5, 1.0, -1.0, 0.5, 0.25, -0.25, 0.5, -1.0, 1.0, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, -0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.25, -0.75, 0.0, -1.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -0.25, -0.5, 0.25, 0.75, 1.0, 0.25, -0.5, -0.75, -0.75, -0.5, 0.25, -0.25, -1.0, -0.25, -0.5, 1.0, 0.0, 0.75, 0.5, ]);
    render_bundle_encoder300.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder403.insertDebugMarker("mymarker");
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder403.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder403.insertDebugMarker("mymarker");
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array11, 0, array11.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.submit([]);
    command_encoder403.insertDebugMarker("mymarker");
    query401.destroy()
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout406]
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_bundle_encoder401.popDebugGroup();
    device50.queue.writeBuffer(buffer502, 0, array11, 0, array11.length);
    
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    query302.destroy()
    render_bundle_encoder402.popDebugGroup();
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    device40.pushErrorScope("validation");
    command_encoder404.pushDebugGroup("mygroupmarker")
    
    query300.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    command_encoder404.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer407, 0, array11, 0, array11.length);
    command_encoder404.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer407,
        0
    )
    device40.queue.submit([command_buffer402, ]);
    buffer403.destroy()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout405]
    });
    command_encoder404.clearBuffer(buffer406);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder402.setVertexBuffer(0, buffer401);
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    buffer404.destroy()
    
    query302.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout406]
    });
    command_encoder404.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer405
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder404.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer408
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
    device40.pushErrorScope("validation");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    
    compute_pass_encoder4010.popDebugGroup()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder402.draw(3);
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device40.queue.writeBuffer(buffer408, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.setVertexBuffer(0, buffer400);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer406,
        0
    )
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    command_encoder403.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer405.destroy()
    buffer401.destroy()
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    query401.destroy()
    command_encoder404.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder401.drawIndirect(buffer406, 0);
    render_bundle_encoder400.drawIndirect(buffer401, 0);
    
    texture400.destroy();
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout407]
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query302.destroy()
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    query304.destroy()
    compute_pass_encoder3010.setPipeline(compute_pipeline303);
    
    command_encoder101.insertDebugMarker("mymarker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout407]
    });
    command_encoder404.copyBufferToBuffer(
        buffer400,
        0,
        buffer407,
        0,
        400
    );
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    command_encoder403.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3030.setPipeline(compute_pipeline301);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group301);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    command_encoder404.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group303);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3013, 0);
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer400, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4012, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4012, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3018, 0);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3030.end();
    compute_pass_encoder4010.end();
    command_encoder401.popDebugGroup()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const command_buffer401 = command_encoder401.finish();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3019, 0);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group306);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4013, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    compute_pass_encoder3030.end();
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4014, 0);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder4010.popDebugGroup()
    command_encoder303.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3030.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4010.end();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder4010.end();
    const command_buffer102 = command_encoder102.finish();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3010.end();
    render_pass_encoder5010.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4015, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder3010.end();
    device40.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([]);
    command_encoder100.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
}