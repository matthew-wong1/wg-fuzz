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
    
    
    const array0 = new Float32Array([0.5, 0.75, -1.0, -1.0, 0.0, 0.75, 0.75, -0.25, 0.75, -0.5, -0.25, -0.25, 0.0, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, -0.5, -0.25, 0.25, 0.25, 1.0, 0.5, -0.5, 0.0, 1.0, 1.0, -0.5, 1.0, 0.0, 0.5, -0.5, -0.5, 0.75, -0.5, 1.0, 0.5, 0.0, -0.25, 0.5, 0.5, -0.75, -1.0, 0.0, 0.75, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, 0.0, 0.75, -0.75, 0.25, -0.75, 0.0, -0.5, 0.0, 1.0, -1.0, 0.0, -0.25, -0.75, -0.5, 0.0, -0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, 0.0, 1.0, -1.0, 1.0, 0.75, 1.0, -0.75, -0.5, 0.0, -0.25, -0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([0.5, 0.75, 0.25, -1.0, -0.5, -0.5, -1.0, -1.0, -0.5, 0.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -1.0, 0.75, -0.5, 0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 0.5, 1.0, -0.5, -0.75, -0.75, 0.0, -0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.75, 0.75, -1.0, -0.75, -0.75, 1.0, -0.75, -0.75, -1.0, 1.0, 0.0, -0.75, -1.0, -0.5, -0.5, 1.0, -0.25, 1.0, -0.25, -0.25, -0.75, 0.0, 0.0, -0.5, 0.5, 0.0, -0.25, 0.5, -0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.75, -1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array2 = new Float32Array([-0.25, 0.25, 0.0, 0.0, 0.75, 0.5, -0.5, 0.25, 0.25, -1.0, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.5, -0.5, 0.25, -0.75, 0.5, -0.25, 0.25, -0.75, -0.25, 1.0, 0.25, -0.75, -0.75, 0.0, -0.5, -1.0, 1.0, 0.5, 0.0, -0.75, 0.5, 0.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.75, -1.0, -0.75, -0.75, -0.5, -0.25, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, 0.75, -1.0, -0.5, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, 0.75, -0.25, 0.5, 0.25, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, 0.25, 0.25, 0.0, 1.0, -1.0, 0.25, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture102.destroy();
    texture100.destroy();
    
    const array3 = new Float32Array([-0.25, 0.5, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, 0.75, -1.0, -0.5, 0.0, 0.75, 0.5, -0.5, -0.75, 0.75, -0.75, 0.25, 0.75, -0.25, 0.5, 0.0, -0.25, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, 1.0, 0.25, -0.75, -1.0, 0.0, 1.0, 0.5, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.75, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 0.25, 0.0, 1.0, -0.25, 0.25, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("validation");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.popDebugGroup()
    buffer100.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer101, ]);
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query100.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    buffer000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer101.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    buffer102.destroy()
    
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    texture101.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer102 = command_encoder102.finish();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.queue.submit([command_buffer000, ]);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
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
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query101.destroy()
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder002.popDebugGroup();
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    texture104.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    texture103.destroy();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder002.popDebugGroup()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.pushErrorScope("validation");
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    
    
    query101.destroy()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array4 = new Float32Array([-0.75, 1.0, 0.25, 0.5, -0.5, -0.25, -0.75, 0.5, 1.0, 0.5, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, 1.0, -1.0, -0.5, -1.0, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, -0.75, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 0.5, 0.75, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, -0.5, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 0.25, -1.0, -0.75, -0.5, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, 0.25, -0.25, -0.5, 1.0, -0.5, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.75, -1.0, -0.75, 1.0, -1.0, -0.25, ]);
    command_encoder103.insertDebugMarker("mymarker");
    const command_buffer003 = command_encoder003.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query101.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const array5 = new Float32Array([1.0, 1.0, -1.0, -0.75, -0.75, 0.75, -1.0, 0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 0.5, 1.0, 0.5, -0.25, -1.0, 0.0, -1.0, 0.75, -1.0, -0.5, 0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, -0.5, 0.75, 0.5, 0.75, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.5, 0.5, -0.5, 0.75, -0.25, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 0.0, 0.5, 0.5, 0.75, -0.25, 1.0, 1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.25, 0.0, -1.0, 1.0, -0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.5, 0.75, -0.75, -1.0, -0.25, ]);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    device10.pushErrorScope("out-of-memory");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture400.destroy();
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query300.destroy()
    device00.pushErrorScope("internal");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
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
    buffer001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture001.destroy();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.insertDebugMarker("mymarker");
    buffer002.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    device30.queue.submit([command_buffer300, ]);
    texture300.destroy();
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    texture000.destroy();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const command_buffer400 = command_encoder400.finish();
    command_encoder401.insertDebugMarker("mymarker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    query103.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const array6 = new Float32Array([0.5, 0.0, -0.25, -1.0, -1.0, -0.25, -0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.25, -0.75, 1.0, 0.25, 0.0, 0.0, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.75, 0.5, 0.0, -1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.0, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, -1.0, 1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.5, 0.5, 0.75, -0.5, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, 0.5, 0.0, 1.0, ]);
    buffer300.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query000.destroy()
    render_bundle_encoder301.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const array7 = new Float32Array([-1.0, -0.25, 0.5, 1.0, -0.5, -1.0, -0.5, -0.25, 1.0, 1.0, 0.75, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, 0.0, 0.75, -0.25, 1.0, 0.5, -0.5, 0.0, -0.25, -1.0, -1.0, -0.5, -0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 0.25, 0.75, 1.0, -0.5, -1.0, -0.25, 0.5, 1.0, 0.75, -0.75, -0.25, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -0.75, 0.5, -0.5, -0.5, 0.0, -0.75, -0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -1.0, -0.25, 1.0, 1.0, 0.25, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    command_encoder301.insertDebugMarker("mymarker");
    buffer103.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    texture003.destroy();
    query101.destroy()
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder002.clearBuffer(buffer003);
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    query100.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer401 = command_encoder401.finish();
    command_encoder301.popDebugGroup()
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
    command_encoder004.pushDebugGroup("mygroupmarker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    command_encoder301.insertDebugMarker("mymarker");
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
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
    render_bundle_encoder000.popDebugGroup();
    query105.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_bundle_encoder101.popDebugGroup();
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    device00.pushErrorScope("internal");
    texture002.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    query301.destroy()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.popDebugGroup();
    command_encoder100.resolveQuerySet(
        query105,
        0,
        32,
        buffer100,
        0
    )
    query100.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer301.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder002.clearBuffer(buffer003);
    device60.destroy();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.pushErrorScope("validation");
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    texture200.destroy();
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder500.clearBuffer(buffer500);
    query104.destroy()
    render_bundle_encoder100.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder002.popDebugGroup()
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.popDebugGroup()
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
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
    command_encoder004.clearBuffer(buffer003);
    
    
    command_encoder004.clearBuffer(buffer003);
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.popDebugGroup()
    command_encoder402.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer100 = command_encoder100.finish();
    const command_buffer104 = command_encoder104.finish();
    const command_buffer301 = command_encoder301.finish();
    const command_buffer004 = command_encoder004.finish();
    command_encoder002.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    const command_buffer402 = command_encoder402.finish();
    const command_buffer403 = command_encoder403.finish();
    command_encoder500.popDebugGroup()
    command_encoder103.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer501 = command_encoder501.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder105.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer402, ]);
    const command_buffer103 = command_encoder103.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device00.queue.submit([command_buffer004, ]);
    const command_buffer105 = command_encoder105.finish();
}