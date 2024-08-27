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
    const array0 = new Float32Array([0.75, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, 0.0, -1.0, 0.25, 0.75, 1.0, -0.25, 0.5, 0.75, 0.0, -1.0, 1.0, -0.5, -0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.75, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.0, 1.0, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, -0.75, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 0.0, 0.5, 0.5, -1.0, 1.0, 0.25, 0.75, 0.0, -0.25, -1.0, 0.25, 1.0, 0.0, 0.5, 0.0, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, 0.5, 0.5, 0.75, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, -0.75, 0.25, -1.0, -0.25, 0.75, 1.0, 0.0, -0.25, -0.75, -0.75, -0.5, 1.0, 0.0, ]);
    const array1 = new Float32Array([0.0, 0.5, -0.75, -1.0, 1.0, 1.0, 0.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, -0.25, -0.25, 1.0, -0.25, 1.0, -0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 1.0, 0.75, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 0.25, -0.75, 0.75, -1.0, -1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 1.0, 0.0, 1.0, 0.25, -1.0, -0.75, 0.5, 0.75, 0.75, 1.0, 0.25, 0.75, 0.25, -1.0, -0.25, -0.5, 0.75, -1.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.0, -0.75, -0.25, 1.0, ]);
    
    
    const array2 = new Float32Array([-0.75, 1.0, 0.25, -0.5, -0.5, 0.5, -1.0, -0.75, 0.5, 0.5, -0.25, 0.0, -1.0, -1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 1.0, 0.0, -0.5, -0.5, -0.25, 0.75, -1.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.25, 1.0, -0.25, 0.0, 0.0, -0.5, 1.0, -1.0, -0.25, -0.75, -1.0, -0.25, -0.75, 1.0, -0.25, 0.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.5, -0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 1.0, 0.0, 0.0, 0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 0.25, -0.5, -0.5, -0.75, 0.0, -0.5, 0.0, 0.0, 0.25, ]);
    
    
    const array3 = new Float32Array([0.75, 0.25, 0.25, -0.25, -0.25, -1.0, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.25, 0.5, 1.0, 0.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 0.25, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, 0.25, -0.25, -0.5, -0.5, 0.0, 0.75, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -0.5, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, 0.0, 0.5, 1.0, -0.5, 0.75, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, -1.0, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.75, 0.75, -0.25, -1.0, -0.75, 0.0, 0.5, 0.5, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const array4 = new Float32Array([0.0, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 0.5, -1.0, 0.25, 0.25, 0.0, -0.25, -0.5, 1.0, 0.75, -0.25, 0.75, -0.75, -0.25, -1.0, 0.5, -1.0, -1.0, -1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, 1.0, 1.0, -0.75, -0.5, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, 0.0, -0.75, 1.0, -1.0, 0.25, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.25, 0.5, 0.75, 0.5, 0.75, -0.25, 0.25, -1.0, 1.0, 0.0, -1.0, 0.0, 1.0, -0.25, -1.0, -0.25, -0.75, 0.5, -0.75, ]);
    buffer000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    texture000.destroy();
    render_bundle_encoder001.popDebugGroup();
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.destroy();
    
    const array5 = new Float32Array([-0.5, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, -0.75, 0.25, 0.5, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, -1.0, -1.0, -1.0, -0.75, 0.0, -1.0, 1.0, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.5, 0.25, -0.5, 0.5, -0.5, -0.75, 0.25, -0.25, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 1.0, 0.0, 0.75, 0.5, 1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, 0.5, -1.0, 0.25, 0.5, -1.0, 0.75, -0.25, 0.25, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, 0.75, 0.25, 0.5, 0.0, 0.5, 0.5, 1.0, 0.5, 1.0, 0.75, -0.75, 1.0, -0.25, -0.25, 0.0, ]);
    const array6 = new Float32Array([-0.25, 0.25, 1.0, -0.5, 0.75, 0.5, -0.5, 0.0, -1.0, 0.25, 0.0, -0.5, 0.25, -0.5, 0.5, -0.75, -1.0, -0.5, 0.75, 0.75, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, 1.0, 0.5, 1.0, 1.0, -0.25, 1.0, -0.75, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.75, 0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, -0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 0.25, -1.0, 0.5, 0.0, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 1.0, 1.0, -0.75, 0.25, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 0.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.0, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture100.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_buffer300 = command_encoder300.finish();
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder301.insertDebugMarker("mymarker");
    device30.queue.submit([command_buffer300, ]);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder302.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    command_encoder301.insertDebugMarker("mymarker");
    device30.pushErrorScope("internal");
    const command_buffer301 = command_encoder301.finish();
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    
    const array7 = new Float32Array([0.75, -0.25, 1.0, 1.0, -0.25, 0.25, -0.25, -0.25, -0.5, -1.0, 0.0, -0.75, -0.5, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, 0.25, 0.0, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, 1.0, 0.5, 0.25, 0.5, 0.75, -0.75, 0.25, -0.25, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 0.5, -0.25, 0.75, -0.5, 1.0, 0.75, -1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.25, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.25, -1.0, 0.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -0.75, 0.0, 0.5, 0.25, 0.25, -1.0, -0.75, 0.25, 1.0, 0.25, 0.25, 0.25, 0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.75, -0.75, 0.25, 0.5, -1.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    device20.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder303.clearBuffer(buffer300);
    command_encoder303.clearBuffer(buffer300);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    command_encoder304.pushDebugGroup("mygroupmarker")
    const command_buffer303 = command_encoder303.finish();
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    const command_buffer305 = command_encoder305.finish();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    command_encoder302.clearBuffer(buffer300);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder302.clearBuffer(buffer301);
    
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    texture301.destroy();
    const command_buffer302 = command_encoder302.finish();
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    render_bundle_encoder302.popDebugGroup();
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    texture302.destroy();
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder3060.insertDebugMarker("marker")
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const array8 = new Float32Array([0.0, 0.25, -0.25, 0.5, 1.0, 1.0, 0.25, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, 0.5, 0.5, 0.25, -0.75, 0.25, -0.75, 0.5, -0.75, -0.5, 0.75, -0.5, 0.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.25, 0.0, 0.5, 0.25, -0.25, -0.75, 0.0, -0.75, 0.25, -0.25, 0.25, -1.0, -0.25, -0.75, -0.5, 0.25, 1.0, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.0, 0.5, 0.75, 0.5, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 1.0, 0.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, ]);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    buffer300.destroy()
    query300.destroy()
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    compute_pass_encoder3060.insertDebugMarker("marker")
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3040.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    compute_pass_encoder3040.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture303.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3060.popDebugGroup()
    compute_pass_encoder3060.pushDebugGroup("group_marker")
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
    const array9 = new Float32Array([0.25, 0.25, 0.5, 0.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 0.0, -0.75, 0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 0.25, 0.75, -0.75, 0.75, -1.0, -0.25, 0.0, -1.0, 1.0, -0.25, 0.0, -0.75, 0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 0.5, 1.0, 0.75, 0.75, -1.0, 0.25, -0.75, -0.5, -0.75, -0.75, -0.25, 0.25, 0.5, -0.5, 0.5, -0.5, -0.25, 0.0, 0.5, -1.0, 0.75, -1.0, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, 0.0, 0.0, -0.25, -0.5, 0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.5, -0.75, -0.25, 0.75, 1.0, 0.75, -0.25, 0.25, 0.5, 0.0, -0.75, ]);
    device40.pushErrorScope("out-of-memory");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    compute_pass_encoder3060.insertDebugMarker("marker")
    compute_pass_encoder3060.insertDebugMarker("marker")
    query300.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
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
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    
    query300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder3080 = command_encoder308.beginComputePass({ label: "compute_pass_encoder3080" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3060.setPipeline(compute_pipeline300);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    compute_pass_encoder3060.popDebugGroup()
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder309.pushDebugGroup("mygroupmarker")
    
    device40.pushErrorScope("internal");
    
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
    render_bundle_encoder302.setPipeline(render_pipeline302);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    device30.queue.submit([command_buffer303, ]);
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    const command_buffer307 = command_encoder307.finish();
    compute_pass_encoder3040.setPipeline(compute_pipeline300);
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer302.destroy()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout304]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.pushDebugGroup("mygroupmarker")
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    compute_pass_encoder3080.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder400.popDebugGroup()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder309.clearBuffer(buffer301);
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    compute_pass_encoder3080.setPipeline(compute_pipeline300);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder309.clearBuffer(buffer301);
    command_encoder309.clearBuffer(buffer301);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group302);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
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
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group303);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder309.insertDebugMarker("mymarker");
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3010, 0);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query400.destroy()
    
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3080.setBindGroup(0, bind_group304);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device30.queue.writeBuffer(buffer3010, 0, array1, 0, array1.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer3010, 0, array9, 0, array9.length);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const command_buffer400 = command_encoder400.finish();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer3011.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    command_encoder309.insertDebugMarker("mymarker");
    buffer307.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    compute_pass_encoder3040.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder301.popDebugGroup();
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer308.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    device40.queue.submit([command_buffer400, ]);
    buffer3012.destroy()
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3010, 0, array8, 0, array8.length);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.destroy();
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer3010, 0, array3, 0, array3.length);
    command_encoder402.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer3010, 0, array8, 0, array8.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer400
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
    const command_encoder3010 = device30.createCommandEncoder({ label: "command_encoder3010" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device30.queue.writeBuffer(buffer3010, 0, array1, 0, array1.length);
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer3010, 0, array3, 0, array3.length);
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
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
    
    query300.destroy()
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    buffer303.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder3090 = command_encoder309.beginRenderPass({
        label: "render_pass_encoder3090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3041,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    buffer3010.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3090.setScissorRect(0, 0, texture304.width / 2, texture304.height / 2);
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3040.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder3090.setPipeline(render_pipeline300);
    device30.queue.submit([command_buffer307, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3040.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder3060.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3090.setBindGroup(0, bind_group305);
    compute_pass_encoder3080.dispatchWorkgroups(100);
    compute_pass_encoder3080.end();
    command_encoder304.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    const command_buffer3010 = command_encoder3010.finish();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3060.setBindGroup(0, bind_group306);
    const uint32_3060 = new Uint32Array(3);

    uint32_3060[0] = 100;
    uint32_3060[1] = 1;
    uint32_3060[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3060, 0, uint32_3060.length);

    compute_pass_encoder3060.dispatchWorkgroupsIndirect(buffer3017, 0);
    const command_buffer308 = command_encoder308.finish();
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer302, command_buffer304, command_buffer308, command_buffer3010, ]);
    compute_pass_encoder3060.end();
    const command_buffer306 = command_encoder306.finish();
}