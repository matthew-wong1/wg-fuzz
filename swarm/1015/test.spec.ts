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
    
    
    const array0 = new Float32Array([1.0, -0.25, 0.25, -0.25, 0.5, 0.75, 0.25, 1.0, 0.25, -0.75, -0.5, -0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, 1.0, 1.0, 1.0, 0.75, 0.5, -1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, -1.0, 0.25, -0.5, 0.25, 0.0, -0.75, 1.0, 1.0, 1.0, 0.5, 1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 1.0, -0.75, 0.25, -0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, 0.0, 0.5, 0.25, 0.0, 0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.25, -0.5, -0.75, 0.25, 0.25, 0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, -0.75, 0.75, -0.25, -0.75, -0.25, -0.5, 0.5, -0.75, -0.25, 0.25, 0.0, -0.75, 0.25, ]);
    
    const array1 = new Float32Array([0.75, -0.75, 0.25, -0.75, 0.25, 0.75, -0.25, 1.0, 1.0, -0.75, 0.5, 0.5, 0.5, -0.25, 0.75, 0.25, -1.0, -0.5, 1.0, -0.25, 0.25, -1.0, -0.25, -1.0, 0.0, 0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, -0.75, 0.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.75, 1.0, -1.0, 0.0, -0.25, 0.25, -0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -0.5, 0.75, -1.0, 0.5, 0.0, 0.25, 1.0, 0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, 0.0, 0.5, 0.25, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -0.5, -0.75, -0.5, 0.25, -0.25, 0.0, -1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.clearBuffer(buffer001);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.clearBuffer(buffer000);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
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
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder000.clearBuffer(buffer001);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture000.destroy();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.submit([]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([command_buffer000, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    device00.pushErrorScope("validation");
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const command_buffer300 = command_encoder300.finish();
    device20.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device30.pushErrorScope("validation");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    command_encoder002.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder001.clearBuffer(buffer001);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array2 = new Float32Array([0.25, -1.0, 1.0, 0.25, 0.5, -0.25, -1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 1.0, -0.75, 0.25, -0.5, -1.0, 1.0, -0.25, 0.0, 0.25, -0.75, -1.0, -0.75, -0.5, -1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.25, 0.75, 0.75, 0.25, 0.75, -1.0, -0.5, 0.5, 0.0, -0.75, 0.25, 0.0, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, 1.0, -0.25, 0.5, -0.75, -1.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, 0.75, -1.0, -0.25, -0.5, 0.25, 0.5, -0.75, 1.0, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, 0.5, 0.75, -0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 1.0, -1.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device30.queue.submit([command_buffer300, ]);
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device50.destroy();
    
    
    
    device30.queue.submit([command_buffer300, ]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    texture002.destroy();
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture003.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0010.beginOcclusionQuery(0)
    
    device00.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0010.executeBundles([])
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0011.executeBundles([])
    
    command_encoder100.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer300.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    
    query300.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    
    render_pass_encoder0011.beginOcclusionQuery(1)
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer001.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    render_pass_encoder0021.executeBundles([])
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.beginOcclusionQuery(1)
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    query100.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    render_pass_encoder0011.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const command_buffer004 = command_encoder004.finish();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0031.beginOcclusionQuery(2)
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query300.destroy()
    
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture004.destroy();
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    command_encoder100.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0011.executeBundles([render_bundle_encoder000, ])
    query000.destroy()
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder0020.executeBundles([])
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array3 = new Float32Array([-0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 1.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.0, -0.75, 0.75, -0.5, -0.75, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, -1.0, 0.75, 0.0, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.25, 1.0, 0.0, -1.0, -0.25, 0.5, -1.0, -0.5, -0.25, -0.5, -0.75, -0.5, -1.0, 0.5, 1.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 0.0, 1.0, -0.75, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, -1.0, -0.5, 0.5, 0.0, 0.75, -0.25, 0.25, 1.0, -0.25, -0.75, -1.0, -0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, -0.5, 0.0, 0.5, -0.25, -0.75, -0.25, 0.0, 1.0, -0.25, 0.0, -0.75, 1.0, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0031.executeBundles([render_bundle_encoder000, ])
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query000.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer600.destroy()
    
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder0040.beginOcclusionQuery(2)
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    query000.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_buffer103 = command_encoder103.finish();
    
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    compute_pass_encoder3011.setPipeline(compute_pipeline305);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array4 = new Float32Array([0.75, -0.25, -0.5, -0.75, -0.5, 1.0, 1.0, 0.25, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.0, 1.0, -0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 0.25, -0.5, -0.5, 0.25, -0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 1.0, -0.75, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 1.0, -0.25, 0.5, -0.75, -0.25, -0.5, 1.0, 0.0, -1.0, -0.5, -0.5, -0.5, -0.5, 0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.0, -1.0, -0.5, 0.25, -0.75, -1.0, 0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.25, -1.0, -0.5, 1.0, -0.5, -1.0, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, ]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    texture200.destroy();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture003.destroy();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer602.destroy()
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const command_buffer500 = command_encoder500.finish();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device70.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder302.popDebugGroup();
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder0031.executeBundles([])
    
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder601.popDebugGroup();
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0030.popDebugGroup();
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.pushDebugGroup("mygroupmarker")
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer601.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0030.executeBundles([])
    device00.queue.submit([command_buffer002, ]);
    
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    texture300.destroy();
    render_bundle_encoder601.popDebugGroup();
    
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query100.destroy()
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device30.destroy();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.executeBundles([])
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.popDebugGroup();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.beginOcclusionQuery(2)
    device40.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder0021.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    texture600.destroy();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder602.popDebugGroup();
    compute_pass_encoder1040.insertDebugMarker("marker")
    const array5 = new Float32Array([0.0, -0.75, 0.75, -0.5, 1.0, 0.25, 0.25, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.25, -1.0, 0.75, 0.0, 0.75, 0.0, -0.5, 0.25, 0.75, 0.5, 0.5, 0.75, 1.0, -0.75, -0.25, 0.0, -1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.5, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, -0.5, 0.5, -1.0, 0.25, -0.5, 1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 0.0, 0.0, -0.25, -0.5, -0.75, -0.25, 1.0, -1.0, 0.5, -0.25, -1.0, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.75, 1.0, 0.5, -0.75, 0.75, 0.75, 0.75, 0.25, -0.5, 0.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.0, -0.25, ]);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0040.endOcclusionQuery()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder0033.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    query601.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.popDebugGroup();
    command_encoder101.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    render_pass_encoder0040.popDebugGroup();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.endOcclusionQuery()
    const command_buffer601 = command_encoder601.finish();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0033.endOcclusionQuery()
    render_pass_encoder0033.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0033.endOcclusionQuery()
    render_pass_encoder0033.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const command_buffer104 = command_encoder104.finish();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0050.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0011, 0);
    const command_buffer102 = command_encoder102.finish();
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    render_pass_encoder0031.endOcclusionQuery()
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0032.endOcclusionQuery()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group301);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0021.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0032.endOcclusionQuery()
    command_encoder100.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0032.endOcclusionQuery()
    compute_pass_encoder0010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    render_pass_encoder0050.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    render_pass_encoder0033.popDebugGroup();
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer307, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.endOcclusionQuery()
    device60.queue.submit([command_buffer600, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer105, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0018, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0050.endOcclusionQuery()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0011.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0032.endOcclusionQuery()
    const command_buffer100 = command_encoder100.finish();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer004, ]);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    command_encoder005.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0033.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer005 = command_encoder005.finish();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder3011.end();
    device60.queue.submit([command_buffer600, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder0010.endOcclusionQuery()
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    render_pass_encoder0020.endOcclusionQuery()
    device60.queue.submit([]);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0032.endOcclusionQuery()
    device60.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
}