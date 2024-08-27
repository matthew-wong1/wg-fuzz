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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device10.destroy();
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.25, -0.25, 1.0, 0.25, 0.25, -0.75, 0.5, -0.25, 0.5, 0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -0.5, 0.75, 0.5, -1.0, -1.0, -0.5, -1.0, 1.0, -1.0, -0.25, -0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, 0.75, 0.25, -0.25, 0.75, -0.75, 1.0, 1.0, -0.5, 0.25, -0.25, 0.25, -0.75, 0.5, 0.5, 1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -1.0, -0.25, 0.0, 0.25, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, -1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.5, -0.5, -0.75, 1.0, -0.5, 1.0, 0.75, -0.5, 0.5, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 0.0, -0.75, -0.75, 0.75, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, 0.25, 1.0, ]);
    const array1 = new Float32Array([-0.25, -0.25, -1.0, 0.0, 0.25, 0.25, 0.0, 0.0, -1.0, -1.0, 0.5, -0.25, 0.5, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, -0.5, 0.25, 1.0, -0.25, 0.75, -0.25, 0.75, -0.75, -0.25, -0.25, 0.25, 1.0, 0.5, 0.25, 1.0, -1.0, 1.0, -0.25, -1.0, 0.5, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, -0.5, 0.0, 0.75, 1.0, -0.75, 0.0, -0.5, 0.5, -0.25, -0.25, 0.5, -1.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 0.25, -1.0, 0.5, -1.0, 0.5, -1.0, 0.5, 0.5, 0.75, 0.0, 0.0, -1.0, 0.75, -0.75, 0.25, -1.0, -0.5, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, ]);
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const array2 = new Float32Array([-0.5, 1.0, -0.25, 0.75, 1.0, 0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.25, 0.0, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 0.5, -0.5, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, -1.0, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, -0.25, 0.5, -1.0, -0.25, -0.5, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, 0.5, -1.0, -0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, 0.25, -0.75, -0.25, 0.25, -0.5, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([0.25, 0.25, 1.0, 0.25, 1.0, -0.25, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, -1.0, -0.25, 1.0, -0.75, 0.0, 0.75, 0.75, 0.75, -1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.25, 0.0, 1.0, 1.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.5, 0.0, 1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 1.0, 0.25, -0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.25, -1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.75, -0.5, 1.0, 0.25, 0.25, -0.5, -0.5, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    device40.destroy();
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array4 = new Float32Array([0.0, -0.75, 0.5, 0.5, 0.5, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, -0.25, 0.75, 0.0, -0.5, 0.5, 1.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, -0.25, 0.0, 0.5, -0.25, 0.25, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, -0.75, 1.0, 0.0, -0.75, -0.5, 0.0, 1.0, -1.0, 0.75, -0.75, -1.0, 0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.75, 0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 0.25, 0.25, 0.75, -0.25, 0.75, -0.25, -0.25, 0.25, 0.0, -1.0, -0.75, 1.0, -1.0, -1.0, 0.5, -1.0, 0.25, -0.25, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
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
    
    
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_buffer200 = command_encoder200.finish();
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const texture_view2015 = texture201.createView({ label: "texture_view2015" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder201.popDebugGroup();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    
    
    command_encoder301.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer200.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer301,
        0,
        400
    );
    device60.destroy();
    const texture_view2016 = texture201.createView({ label: "texture_view2016" });
    const command_buffer302 = command_encoder302.finish();
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder303.clearBuffer(buffer302);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder303.clearBuffer(buffer301);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder303.popDebugGroup()
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder303.copyBufferToBuffer(
        buffer303,
        0,
        buffer302,
        0,
        400
    );
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    buffer301.destroy()
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
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    
    command_encoder306.pushDebugGroup("mygroupmarker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    command_encoder306.pushDebugGroup("mygroupmarker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder305.clearBuffer(buffer302);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    buffer303.destroy()
    command_encoder306.insertDebugMarker("mymarker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const texture_view2017 = texture201.createView({ label: "texture_view2017" });
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    command_encoder306.copyBufferToBuffer(
        buffer302,
        0,
        buffer302,
        0,
        400
    );
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder306.resolveQuerySet(
        query300,
        0,
        32,
        buffer304,
        0
    )
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder306.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    command_encoder306.copyBufferToBuffer(
        buffer302,
        0,
        buffer302,
        0,
        400
    );
    query300.destroy()
    command_encoder307.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder501.popDebugGroup();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device30.destroy();
    const command_buffer500 = command_encoder500.finish();
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer305.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder800.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder202.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder800.popDebugGroup()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder202.clearBuffer(buffer201);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    buffer501.destroy()
    command_encoder201.clearBuffer(buffer201);
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder201.popDebugGroup();
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer500.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer502 = command_encoder502.finish();
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder202.clearBuffer(buffer201);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder201.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device00.destroy();
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    command_encoder201.clearBuffer(buffer201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder202.popDebugGroup()
    command_encoder800.pushDebugGroup("mygroupmarker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array5 = new Float32Array([0.5, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, 0.0, 0.75, -1.0, 0.5, -0.5, 0.0, 0.5, -0.25, 0.5, -0.25, 0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -1.0, -0.75, -1.0, 0.75, 0.25, -0.5, 0.25, -0.25, 0.25, 1.0, 0.75, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 1.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.5, -0.75, 0.75, 0.25, -0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, 0.0, 0.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 1.0, 0.5, -0.5, 0.75, 0.5, 0.75, 0.75, -0.75, 0.75, 1.0, -1.0, 1.0, -1.0, 0.0, 0.25, ]);
    
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    buffer002.destroy()
    
    const texture_view2006 = texture200.createView({ label: "texture_view2006" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder202.popDebugGroup();
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    
    device70.destroy();
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    buffer302.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array6 = new Float32Array([0.5, -1.0, 1.0, -1.0, -1.0, 0.75, 0.25, 0.75, 0.0, -0.25, 0.25, -0.25, 0.75, 0.0, 1.0, -0.25, -0.5, -1.0, -0.75, -0.5, -0.75, -0.75, -1.0, 0.25, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.75, 0.25, 1.0, -0.25, -0.25, -1.0, 0.5, -0.75, 0.0, 0.25, -0.5, 0.25, -0.5, 1.0, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, -0.75, -0.5, 0.25, -0.5, 0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 0.0, 1.0, -0.25, 1.0, 0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -0.75, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.5, 1.0, ]);
    
    
    render_bundle_encoder201.popDebugGroup();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder800.popDebugGroup()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const command_buffer503 = command_encoder503.finish();
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    buffer201.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    query204.destroy()
    query202.destroy()
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder800.insertDebugMarker("marker");
    
    buffer000.destroy()
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    buffer502.destroy()
    
    query201.destroy()
    
    buffer504.destroy()
    query204.destroy()
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    render_bundle_encoder801.popDebugGroup();
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    command_encoder204.insertDebugMarker("mymarker");
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    buffer503.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    
    command_encoder203.insertDebugMarker("mymarker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder800.insertDebugMarker("marker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
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
    command_encoder203.insertDebugMarker("mymarker");
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const command_buffer801 = command_encoder801.finish();
    command_encoder800.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    const command_buffer304 = command_encoder304.finish();
    const command_buffer204 = command_encoder204.finish();
}