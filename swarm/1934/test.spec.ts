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
    const array0 = new Float32Array([-0.75, -0.25, -1.0, -0.5, -1.0, 0.75, 1.0, -0.75, -0.25, 0.75, -0.5, 0.75, -0.5, -1.0, 0.0, -1.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -0.25, -0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 1.0, 0.0, 1.0, 0.0, -0.75, 1.0, -0.75, 0.5, 0.5, -0.25, 0.25, 1.0, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.75, -0.5, 0.5, 1.0, -0.5, -0.75, -0.75, 0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 0.0, -0.25, 1.0, 1.0, -1.0, -0.75, -0.25, 0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 0.0, -0.25, 0.75, -1.0, -0.5, 0.25, -0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array1 = new Float32Array([-0.25, 0.25, 0.0, 0.5, -0.75, 1.0, 0.0, -0.5, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.0, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.75, 0.25, -0.25, 0.75, 1.0, 0.25, 1.0, 0.25, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, -0.25, 0.25, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, -0.25, 0.25, -0.75, -0.25, -1.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.25, -0.75, -0.75, -0.5, -0.75, 0.0, 0.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, 0.0, -0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.25, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.pushErrorScope("internal");
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array2 = new Float32Array([-0.75, -0.5, 1.0, 0.0, -0.25, 0.25, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 0.75, -1.0, -0.75, -0.25, 0.25, -0.75, -1.0, -0.25, -1.0, -0.75, 0.5, 0.5, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, -0.5, 0.0, -0.25, -0.5, -0.5, 0.0, -0.5, 1.0, 0.5, 0.25, -1.0, -0.75, -1.0, 1.0, -1.0, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.75, -0.25, 0.25, 0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 0.0, -1.0, -0.75, -1.0, 0.0, -0.25, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, 0.75, 0.75, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.25, 0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array3 = new Float32Array([0.0, -0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 1.0, 1.0, 0.0, 0.5, -0.5, -1.0, 0.5, 0.25, -0.25, -1.0, 1.0, -0.25, -0.25, 0.5, 0.0, 0.75, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 0.75, -0.75, -0.5, -0.5, 0.5, -0.5, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, -0.25, 0.25, -0.5, -1.0, 1.0, -0.5, -0.75, 0.75, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, 0.25, 0.75, 0.25, -1.0, -0.75, 0.0, 1.0, -1.0, 0.0, 0.0, -1.0, -0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.0, 1.0, -0.5, 0.25, -0.5, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 1.0, 0.0, 0.5, 0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const array4 = new Float32Array([-0.5, 0.75, -0.5, -0.25, -0.5, -0.25, -1.0, -0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.25, 1.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 0.75, -0.5, 0.75, -1.0, -1.0, -0.5, 0.75, -0.5, 0.5, 0.0, 0.75, 1.0, 0.5, 0.5, -0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 1.0, -0.25, -0.75, 0.25, -0.25, -0.5, -1.0, -0.5, -0.25, -1.0, 0.75, 0.5, 0.5, -0.5, 1.0, 1.0, 0.0, 0.75, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 0.25, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -0.25, -1.0, 0.25, 0.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture400.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    query100.destroy()
    device30.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.pushErrorScope("out-of-memory");
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    buffer101.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    texture200.destroy();
    texture201.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    query100.destroy()
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer200.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.pushErrorScope("validation");
    
    texture401.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.executeBundles([])
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer201.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture402.destroy();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture800.destroy();
    buffer202.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder2010.insertDebugMarker("marker");
    command_encoder401.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture403
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.popDebugGroup();
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device40.pushErrorScope("validation");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer100, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query202.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array5 = new Float32Array([0.75, 0.25, -0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.75, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.25, 0.25, 1.0, 1.0, 0.25, 0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 0.75, -0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 0.0, 0.5, 0.75, 0.5, 1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 1.0, 1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.5, -1.0, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -0.5, 0.0, 0.0, 1.0, -0.5, -1.0, ]);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_pass_encoder4010.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder203.copyTextureToTexture(
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
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder4020.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    
    
    device90.destroy();
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    texture202.destroy();
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
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
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device70.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    query102.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder4010.setStencilReference(1);
    query501.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.resolveQuerySet(
        query503,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder2001.executeBundles([])
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("validation");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4020.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer501.destroy()
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2001.executeBundles([])
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setStencilReference(1);
    buffer400.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const command_buffer501 = command_encoder501.finish();
    query101.destroy()
    
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder4020.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    device50.pushErrorScope("out-of-memory");
    
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2001.setStencilReference(1);
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    
    
    const command_buffer502 = command_encoder502.finish();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.executeBundles([])
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_pass_encoder4010.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    command_encoder500.resolveQuerySet(
        query502,
        0,
        32,
        buffer501,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    query502.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    command_encoder500.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    render_pass_encoder4010.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    render_pass_encoder2000.popDebugGroup();
    query102.destroy()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    device80.pushErrorScope("internal");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query503.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    texture403.destroy();
    render_pass_encoder4020.popDebugGroup();
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    render_pass_encoder4011.pushDebugGroup("group_marker");
    render_pass_encoder4010.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_buffer1000 = command_encoder1000.finish();
    
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    query102.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_pass_encoder8000.insertDebugMarker("marker");
    
    query505.destroy()
    
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    
    
    render_pass_encoder2001.executeBundles([])
    device00.pushErrorScope("validation");
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    render_pass_encoder2001.executeBundles([])
    
    render_pass_encoder4011.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    texture802.destroy();
    query401.destroy()
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_pass_encoder2030.insertDebugMarker("marker");
    query401.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    render_pass_encoder8000.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query202.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    
    
    texture1100.destroy();
    query701.destroy()
    
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder8000.executeBundles([])
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.pushErrorScope("out-of-memory");
    render_pass_encoder4011.executeBundles([])
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    render_pass_encoder2000.executeBundles([])
    device60.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    device120.pushErrorScope("validation");
    
    render_pass_encoder8000.executeBundles([])
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.executeBundles([])
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture702 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.insertDebugMarker("marker");
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    query502.destroy()
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    
    device70.queue.writeTexture({ texture: texture702 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    texture700.destroy();
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const command_buffer1001 = command_encoder1001.finish();
    device70.pushErrorScope("validation");
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_pass_encoder4010.insertDebugMarker("marker");
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_pass_encoder4010.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder8000.setStencilReference(1);
    device110.destroy();
    query202.destroy()
    render_pass_encoder4010.setStencilReference(1);
    
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder4020.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer204 = command_encoder204.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer503 = command_encoder503.finish();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    const command_buffer1200 = command_encoder1200.finish();
    const command_buffer200 = command_encoder200.finish();
    device50.queue.submit([command_buffer500, ]);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.popDebugGroup();
    device120.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device100.queue.submit([command_buffer1000, command_buffer1001, ]);
    render_pass_encoder2000.endOcclusionQuery()
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder4011.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer400, ]);
    device120.queue.submit([command_buffer1200, ]);
    device20.queue.submit([command_buffer204, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.endOcclusionQuery()
    device40.queue.submit([]);
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder4011.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    device120.queue.submit([command_buffer1200, ]);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder4020.popDebugGroup();
    device100.queue.submit([command_buffer1001, ]);
    device20.queue.submit([command_buffer203, ]);
    device120.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer500, ]);
}