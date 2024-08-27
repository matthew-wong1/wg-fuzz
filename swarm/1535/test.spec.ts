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
    const array0 = new Float32Array([-0.75, 0.25, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.75, -0.5, 0.0, 0.5, -0.25, 0.75, 1.0, -1.0, 0.25, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, 0.25, 0.5, -0.75, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.75, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, 0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.5, 0.75, -0.5, -0.5, 0.75, -1.0, 0.5, -0.75, -0.75, 0.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.5, -0.75, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array1 = new Float32Array([0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, 0.5, 0.5, 1.0, 0.5, -1.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.25, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, 1.0, -1.0, 0.5, 0.75, -0.75, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.75, -1.0, 0.0, -0.5, 0.25, 0.0, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 0.75, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -0.5, 0.25, 1.0, 0.25, -0.5, 0.75, 0.25, -0.25, -0.25, 0.0, 1.0, -1.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 1.0, -0.5, -0.5, 1.0, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, -1.0, 0.0, -0.25, -1.0, -1.0, -0.75, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    const array2 = new Float32Array([0.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, -0.75, -0.75, 1.0, 1.0, -1.0, -0.75, 1.0, 1.0, -0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -0.25, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.25, 0.75, -0.5, 0.0, -0.75, -1.0, 0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, 0.5, -1.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.75, 0.0, 0.75, 0.0, -0.75, 0.25, -0.5, 1.0, -0.75, 0.5, 0.75, 1.0, 0.0, -0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -0.25, 0.25, -1.0, 0.0, -0.25, 0.75, 0.0, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, 0.5, 1.0, 1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.0, 0.75, -1.0, 0.75, -0.5, 0.0, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
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
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
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
        usage: GPUBufferUsage.STORAGE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query200.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0010.executeBundles([])
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer002.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture001.destroy();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer003.destroy()
    
    query201.destroy()
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer001.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0031.executeBundles([])
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture201.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0031.executeBundles([])
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer203.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.executeBundles([])
    query200.destroy()
    texture001.destroy();
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.destroy();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer600.destroy()
    render_pass_encoder0010.executeBundles([])
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query002.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer203,
        0,
        buffer204,
        0,
        400
    );
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2010.executeBundles([])
    
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer201.destroy()
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    query200.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    buffer204.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query201.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer200.destroy()
    texture202.destroy();
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder2010.executeBundles([])
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const array3 = new Float32Array([-0.75, -0.5, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, -0.25, -0.25, 0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, 0.25, 1.0, 0.5, 0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.5, 0.5, 1.0, -0.25, -1.0, -0.5, 0.0, 0.75, -0.25, -0.5, -0.5, -1.0, 1.0, 0.0, -0.75, -0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.75, -1.0, -1.0, -0.25, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, 0.25, 0.5, -0.5, -0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.75, ]);
    render_pass_encoder2011.executeBundles([])
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device120.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder2020.popDebugGroup();
    query100.destroy()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.executeBundles([])
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    query200.destroy()
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query800.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query202.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    buffer600.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    buffer800.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query202.destroy()
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture800.destroy();
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    texture800.destroy();
    render_pass_encoder2021.executeBundles([])
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    buffer800.destroy()
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    buffer300.destroy()
    buffer202.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.destroy();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query801
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2020.executeBundles([])
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2041.executeBundles([])
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query802
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder401.insertDebugMarker("mymarker");
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    render_pass_encoder2000.executeBundles([])
    query801.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder8000.executeBundles([])
    
    
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder8010.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder8000.executeBundles([])
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    texture501.destroy();
    texture802.destroy();
    query201.destroy()
    device100.destroy();
    query200.destroy()
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.executeBundles([])
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_pass_encoder3000.executeBundles([])
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query801.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.executeBundles([])
    const array4 = new Float32Array([0.25, 0.5, -0.75, 1.0, -0.5, -0.25, -0.5, 0.5, -0.75, -0.75, 0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, -1.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, 0.75, 1.0, 0.75, -0.25, 0.0, -1.0, 1.0, 0.75, -0.5, -1.0, -0.75, -0.5, -1.0, 0.75, 0.75, 0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.5, 0.75, 0.25, -0.75, -0.5, -0.5, 0.25, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, -0.5, 0.5, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query801.destroy()
    
    device60.destroy();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture203.destroy();
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    query501.destroy()
    render_pass_encoder8000.executeBundles([])
    query801.destroy()
    
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    render_pass_encoder8000.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer301.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const command_buffer203 = command_encoder203.finish();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    buffer1100.destroy()
    query601.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder8021 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query802
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder2041.executeBundles([])
    
    buffer200.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query902.destroy()
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    render_pass_encoder8021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler905 = device90.createSampler( { label: "sampler905" } );
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder8020.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture400.destroy();
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.executeBundles([])
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
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query400.destroy()
    buffer1101.destroy()
    query801.destroy()
    
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder9000.popDebugGroup()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    query500.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0020.executeBundles([])
    const command_buffer801 = command_encoder801.finish();
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    buffer204.destroy()
    
    const command_buffer901 = command_encoder901.finish();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2001.popDebugGroup();
    const command_buffer800 = command_encoder800.finish();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder8020.popDebugGroup();
    render_pass_encoder8021.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2021.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder8021.popDebugGroup();
    const command_buffer900 = command_encoder900.finish();
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
}