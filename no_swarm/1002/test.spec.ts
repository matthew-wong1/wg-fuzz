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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array0 = new Float32Array([-0.25, 0.25, 0.0, -0.5, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, -0.75, -0.25, -0.25, -1.0, 0.75, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, 0.75, 0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.75, -1.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 0.5, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, -0.25, -1.0, 0.75, -0.25, -0.25, 0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, -0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, 1.0, 0.0, -1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -0.25, 0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array1 = new Float32Array([-0.25, 0.25, 0.75, 0.5, 0.0, 0.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, -0.25, 1.0, -0.5, 0.5, -0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 0.0, 0.0, 0.75, 0.25, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, -0.75, -0.75, 0.5, -0.75, 1.0, 1.0, 1.0, -0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 0.5, -0.5, 0.0, 0.5, -0.75, -0.5, -0.75, -0.5, 0.5, -0.75, -0.75, 0.75, -0.25, -0.5, -0.75, -1.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.75, -0.5, -1.0, -1.0, 0.25, 1.0, -0.75, -0.25, 0.75, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.0, 0.0, ]);
    
    
    
    const array2 = new Float32Array([-1.0, 0.5, -0.75, 0.0, 0.0, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, -1.0, -0.75, 1.0, 1.0, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.0, 0.75, -0.25, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -1.0, 1.0, -0.25, 0.75, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 0.5, -0.25, 0.75, 0.5, -0.25, 0.0, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, 0.5, 1.0, -0.25, 1.0, 0.5, 0.0, -0.25, -0.25, -0.5, -0.25, -1.0, 0.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.5, -0.5, -0.25, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 1.0, 1.0, 0.0, -0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array3 = new Float32Array([-0.25, -0.5, -0.25, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, -1.0, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 1.0, -0.25, 1.0, -0.75, 0.5, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, -0.25, -1.0, 0.0, -0.75, -0.25, 0.75, 1.0, 0.25, -0.75, 1.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 0.75, -0.5, 1.0, 0.25, 0.5, 1.0, 0.5, -0.5, -0.75, 1.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.75, -0.75, 0.5, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-1.0, 0.5, 1.0, 1.0, -0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, -1.0, -0.5, -0.25, 0.5, 0.25, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, -0.75, 1.0, 0.75, 0.25, -0.75, 1.0, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, -0.25, 1.0, -0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.25, 1.0, -1.0, -0.5, -0.25, 0.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.5, 0.0, -0.75, 0.25, -0.5, 0.75, 0.75, 1.0, 0.25, -0.25, -0.5, -0.5, -1.0, 1.0, 0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder100.clearBuffer(buffer101);
    
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    buffer100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -0.75, -1.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -0.25, 0.0, -1.0, 0.25, 0.0, 0.0, -0.5, -0.5, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, -1.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.25, 0.5, -0.25, 0.5, -0.75, 0.75, -1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, -0.5, 1.0, 1.0, 0.5, -0.75, 0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -1.0, -1.0, -0.75, 0.25, -0.75, -0.75, 0.25, 0.25, -0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -1.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.insertDebugMarker("mymarker");
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const command_buffer101 = command_encoder101.finish();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    texture100.destroy();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    render_bundle_encoder100.popDebugGroup();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture102.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array6 = new Float32Array([-0.75, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, -1.0, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, -0.75, 0.5, 0.5, 0.5, -0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, 0.75, -0.5, 1.0, -0.75, -0.5, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, 0.0, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, -0.25, 0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.5, 0.0, 0.5, ]);
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    
    device10.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer201.destroy()
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer102 = command_encoder102.finish();
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device20.destroy();
    const array7 = new Float32Array([-0.5, -1.0, 0.0, -1.0, 0.75, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, -1.0, -0.25, 0.5, 0.25, -0.5, -0.5, 0.0, -0.75, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 0.75, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.75, 0.0, -0.5, 0.75, -0.75, 1.0, 1.0, 0.75, -1.0, 0.25, -0.25, 0.75, 0.5, -0.5, -0.5, 0.5, -0.5, 0.0, -0.5, 0.25, -0.25, -1.0, -0.25, 0.0, -0.75, 0.75, 0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, 0.75, -0.25, -1.0, 0.5, 0.0, -0.75, 1.0, -0.5, 0.0, 0.5, 0.5, -0.5, -0.25, ]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.destroy();
    texture300.destroy();
    buffer200.destroy()
    
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device30.destroy();
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const command_buffer200 = command_encoder200.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query400.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    query400.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const array8 = new Float32Array([-0.5, -0.5, 0.75, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.75, 0.75, -0.25, -0.25, 0.75, -0.5, -0.5, 1.0, -1.0, 0.75, -0.75, 1.0, 0.5, 0.0, 1.0, -0.75, -0.5, 0.25, 0.5, 1.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.25, -0.75, 0.0, -0.5, 0.5, 1.0, -0.25, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.75, -1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 0.5, 1.0, 0.25, -0.75, 0.0, 0.5, -0.25, -0.25, -0.75, -0.5, -1.0, 0.5, -0.5, 1.0, -0.75, 0.75, 0.5, 0.5, -0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 0.5, -0.25, 0.25, 0.5, -0.25, -0.75, 0.5, 0.75, 0.0, -0.75, 0.25, -0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, ]);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device50.pushErrorScope("internal");
    
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer400 = command_encoder400.finish();
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array9 = new Float32Array([-1.0, -0.25, -0.25, -0.25, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 1.0, -1.0, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 1.0, 0.75, 0.75, -0.25, -0.25, 0.0, -0.5, -0.5, 1.0, 0.25, 0.25, -0.25, 0.75, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, 0.5, 1.0, 0.75, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, -0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 1.0, 0.25, -0.5, 0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -0.5, 0.25, 1.0, 0.0, -0.25, 0.0, -0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 1.0, 1.0, -0.25, ]);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    texture500.destroy();
    
    
    query400.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device40.pushErrorScope("out-of-memory");
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const array10 = new Float32Array([0.75, -0.25, -0.25, 0.75, -0.25, 0.75, -0.25, 0.5, 0.0, 1.0, 0.25, -0.5, -0.25, -0.75, -0.5, -0.75, 1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.25, 0.0, 0.75, 0.25, 1.0, 0.25, 1.0, -0.5, 0.0, -0.25, -0.5, -0.75, -0.5, -1.0, 1.0, -0.25, -0.25, 0.75, 0.0, 0.0, -1.0, 0.25, -1.0, 0.25, 0.25, 0.0, -0.75, 0.5, -0.25, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, 0.25, 0.75, -0.5, -0.5, 0.75, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.5, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.25, -0.5, -0.5, ]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const array11 = new Float32Array([-0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.5, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.75, 0.5, -0.75, 0.25, -0.75, 0.75, 1.0, 1.0, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, 0.75, -0.25, 1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -0.75, -0.5, 1.0, -0.75, -0.75, 0.75, 0.25, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.25, -0.5, 0.25, -0.25, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, -0.5, -0.5, -0.25, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 0.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.25, ]);
    const array12 = new Float32Array([-0.75, 0.0, 0.25, -0.25, 1.0, -0.25, 0.5, 0.5, 0.75, 0.25, 0.25, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, -0.5, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.5, 0.75, 0.0, 0.75, 0.75, 0.0, -1.0, -0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, -0.75, 0.75, 0.25, -0.5, -1.0, 0.75, 1.0, 0.25, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.0, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, 0.5, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 0.75, -1.0, -0.75, 1.0, 0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -0.75, ]);
    texture400.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer401.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array13 = new Float32Array([1.0, -0.75, 0.75, 0.0, 0.5, -0.5, 0.0, -0.75, 0.75, 0.25, 1.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, 0.5, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, -1.0, 0.25, 1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.0, -0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.75, 0.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 1.0, -0.5, -0.5, 0.0, 1.0, -0.75, -0.5, 0.5, -0.5, 0.75, 0.25, 0.25, -0.25, -0.25, 0.25, 1.0, -1.0, ]);
    
    device60.destroy();
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array13, 0, array13.length);
    
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
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
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.insertDebugMarker("mymarker");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    texture401.destroy();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline402);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    render_pass_encoder4020.setPipeline(render_pipeline402);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setStencilReference(1);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    
    
    query400.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
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
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4010.setPipeline(render_pipeline405);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline404);
    buffer402.destroy()
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
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
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    render_pass_encoder4010.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
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
    
    render_pass_encoder4010.popDebugGroup();
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_pipeline4014 = device40.createRenderPipeline({
        label: "render_pipeline4014",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
        vertex: {
            module: shader_module408,
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
            module: shader_module408,
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
    
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.queue.submit([command_buffer400, ]);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline4016 = device40.createRenderPipeline({
        label: "render_pipeline4016",
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const render_pipeline4017 = device40.createRenderPipeline({
        label: "render_pipeline4017",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query400.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    render_pass_encoder4010.setStencilReference(1);
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4030.setPipeline(render_pipeline402);
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    render_pass_encoder4030.setStencilReference(1);
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device60.destroy();
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group402);
    
    
    
    render_pass_encoder4020.popDebugGroup();
    device40.queue.writeBuffer(buffer407, 0, array10, 0, array10.length);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    
    render_pass_encoder4020.insertDebugMarker("marker");
    buffer406.destroy()
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    device40.queue.writeBuffer(buffer403, 0, array12, 0, array12.length);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    const render_pipeline4018 = device40.createRenderPipeline({
        label: "render_pipeline4018",
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
    
    
    buffer403.destroy()
    
    
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer407, 0, array9, 0, array9.length);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group403);
    
    const render_pipeline4019 = device40.createRenderPipeline({
        label: "render_pipeline4019",
        vertex: {
            module: shader_module408,
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
            module: shader_module408,
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
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout406,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    
    command_encoder403.clearBuffer(buffer4012);
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer407, 0, array13, 0, array13.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array14 = new Float32Array([1.0, 0.0, -0.5, 0.75, -0.25, 0.75, 0.25, -0.75, -1.0, 0.75, 0.25, 0.5, -1.0, -0.5, -0.75, 1.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.75, 0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 0.25, -1.0, -0.75, -0.25, -0.5, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, 0.75, 0.25, -0.75, 1.0, -1.0, 0.0, -1.0, -1.0, 1.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 0.75, 1.0, 1.0, -1.0, -0.25, 0.75, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, -0.5, 0.75, -1.0, 0.5, -0.75, -0.75, -0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.75, -1.0, -0.5, 1.0, -0.25, -1.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.25, ]);
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    command_encoder404.insertDebugMarker("mymarker");
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    render_bundle_encoder402.popDebugGroup();
    buffer407.destroy()
    render_pass_encoder4031.setPipeline(render_pipeline4019);
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    buffer409.destroy()
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    compute_pass_encoder4010.setPipeline(compute_pipeline4014);
    
    device40.queue.writeBuffer(buffer4010, 0, array14, 0, array14.length);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline4019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group405);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group406);
    var shader_module4012_code = "";
    try {
        shader_module4012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4012 = await device40.createShaderModule({ label: "shader_module4012", code: shader_module4012_code })
    render_pass_encoder4031.setVertexBuffer(0, buffer4015);
    compute_pass_encoder4040.setPipeline(compute_pipeline4021);
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4030.setVertexBuffer(0, buffer400);
    render_pass_encoder4030.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4031.drawIndirect(buffer404, 0);
    render_pass_encoder4030.draw(3);
    render_pass_encoder4010.setVertexBuffer(0, buffer406);
    render_pass_encoder4020.setVertexBuffer(0, buffer4014);
    render_pass_encoder4020.draw(3);
    render_pass_encoder4010.setIndexBuffer(buffer4010, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline4021.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group407);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline4014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    render_pass_encoder4030.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4010.setIndexBuffer(buffer4010, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4010.drawIndirect(buffer4016, 0);
    render_pass_encoder4030.end();
    render_pass_encoder4031.end();
    render_pass_encoder4020.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4010.end();
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4020.end();
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder1000.popDebugGroup()
    command_encoder401.popDebugGroup()
    compute_pass_encoder4020.end();
    render_pass_encoder4010.drawIndirect(buffer4015, 0);
    compute_pass_encoder4040.end();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4010.drawIndirect(buffer4010, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4012, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4021, 0);
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4020, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4022, 0);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    compute_pass_encoder4040.end();
    const command_buffer401 = command_encoder401.finish();
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4022, 0);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4031.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer403, ]);
    render_pass_encoder4031.drawIndirect(buffer4022, 0);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline4021.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4010);
    render_pass_encoder4030.drawIndexedIndirect(buffer4016, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4027, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4026, "uint16");
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4011);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder4031.end();
    device40.queue.submit([]);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline4014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    render_pass_encoder4020.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4027, 0);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder4010.end();
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline4014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    render_pass_encoder4010.end();
    render_pass_encoder4031.drawIndexedIndirect(buffer4019, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4034, 0);
}