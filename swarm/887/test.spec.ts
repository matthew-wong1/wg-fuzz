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
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array0 = new Float32Array([-0.5, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 0.5, -0.25, -1.0, -0.25, -0.75, -1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 0.5, -0.25, 0.0, -1.0, -1.0, -1.0, -1.0, 0.0, 0.25, -0.5, -0.25, -0.25, -1.0, -0.75, -0.5, 1.0, -1.0, 0.0, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, -0.25, 1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 0.0, -0.5, 0.75, 1.0, -0.5, 0.0, 0.75, -0.5, 1.0, -1.0, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, -0.25, -1.0, -0.5, -0.25, -0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.25, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, 0.5, 0.25, 0.5, 1.0, -0.75, ]);
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const command_buffer201 = command_encoder201.finish();
    const array1 = new Float32Array([0.0, -1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -1.0, 1.0, -0.75, 0.25, 1.0, 0.75, -0.5, -1.0, 0.5, -1.0, 1.0, 0.5, 1.0, 0.0, -0.75, 0.0, -0.5, 0.5, -0.25, 0.75, 0.5, -1.0, -0.75, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, 1.0, -0.25, -0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, 0.75, 0.75, -0.75, -0.25, -0.25, 0.0, -0.5, 0.25, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, -0.25, 0.25, -1.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 1.0, 0.0, 0.25, 0.25, 0.5, 0.75, -0.25, 0.0, -0.75, 0.25, -1.0, -0.75, 0.0, ]);
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.popDebugGroup()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.popDebugGroup()
    command_encoder203.pushDebugGroup("mygroupmarker")
    query200.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    compute_pass_encoder2030.popDebugGroup()
    const array2 = new Float32Array([0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 0.25, -1.0, -1.0, 0.25, -0.75, -0.75, 0.25, -0.75, -0.75, 1.0, 0.25, 0.0, 1.0, 0.75, 1.0, 0.0, 1.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, 1.0, -0.25, 0.5, 0.25, 1.0, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, -1.0, 0.0, -0.25, -0.5, -1.0, 1.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, -0.25, -0.75, 1.0, -1.0, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, -0.25, -0.25, 0.0, -0.25, 1.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.0, 0.0, -0.5, 0.5, ]);
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2020.popDebugGroup()
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2030.popDebugGroup()
    query200.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query200.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2040.insertDebugMarker("marker")
    query200.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    
    const array3 = new Float32Array([-0.25, 0.75, 0.75, -0.25, 0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -0.75, -0.25, 0.0, 1.0, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, -0.5, -0.25, -0.75, 0.25, 0.25, -0.75, 0.25, 0.75, 0.0, 0.0, 0.0, 1.0, 0.75, 1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 0.25, 0.25, -1.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, 1.0, 0.75, 0.5, -1.0, -0.5, 0.25, -0.5, 1.0, 0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 1.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    query200.destroy()
    compute_pass_encoder2040.popDebugGroup()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query201.destroy()
    const array4 = new Float32Array([-0.5, -0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -0.75, 0.5, 0.0, 0.25, 0.75, -0.5, 0.0, 0.25, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 0.5, 0.75, 1.0, -1.0, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -0.25, 1.0, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, -1.0, 0.0, 0.5, -0.5, -1.0, 0.25, -0.5, 0.75, 0.5, 0.25, -0.75, 1.0, -0.25, -0.25, -0.5, 0.75, -1.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.75, -0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, -0.25, -0.75, 0.0, 0.75, -0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 0.5, -1.0, 1.0, -0.5, ]);
    compute_pass_encoder2020.popDebugGroup()
    
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    texture301.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query200.destroy()
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const array5 = new Float32Array([0.0, -0.25, -1.0, -0.75, 0.25, 0.0, 0.75, -0.75, 0.5, 0.5, -0.5, -0.75, -0.5, 0.5, -1.0, 0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, 0.25, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, -0.25, -0.75, -0.25, -0.25, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 0.25, -0.25, -1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.5, 0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.25, -0.75, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, ]);
    
    query200.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.popDebugGroup()
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture201.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    query201.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture202.destroy();
    compute_pass_encoder2020.popDebugGroup()
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query202.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    query200.destroy()
    texture400.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    compute_pass_encoder2030.popDebugGroup()
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query202.destroy()
    query200.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setStencilReference(1);
    query203.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    render_pass_encoder4010.beginOcclusionQuery(0)
    render_pass_encoder4000.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array6 = new Float32Array([-0.75, -0.25, 0.25, 0.75, 0.25, -1.0, 0.25, -0.5, -0.5, 0.5, -0.75, 1.0, 0.5, 0.0, -1.0, -0.25, -0.25, -0.75, -0.75, -0.75, -0.5, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.75, 0.5, -0.5, 0.25, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.5, -1.0, 1.0, -1.0, 0.5, 0.25, -0.25, 1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.75, -0.75, 0.25, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, -0.5, 0.0, -0.5, 0.0, -0.75, 0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.75, -0.75, -0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.25, 0.0, -0.75, 1.0, 0.75, 0.75, 0.0, ]);
    const array7 = new Float32Array([-0.75, 0.25, -0.75, -0.25, 0.0, -0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, -0.25, -0.5, -0.75, 1.0, 0.5, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -0.25, 0.5, 0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -0.5, -0.5, 0.0, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -0.25, 1.0, -0.75, 0.25, -0.75, 0.75, -0.75, 0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, -0.25, 1.0, 0.5, 0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.5, -0.5, -0.75, 0.75, -0.75, -0.25, 0.0, -1.0, -1.0, -1.0, -0.25, 0.25, 0.5, 0.25, 0.75, 0.25, 1.0, 1.0, -1.0, 0.0, 0.25, 0.25, 0.0, ]);
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    render_pass_encoder4010.endOcclusionQuery()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query200.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    query204.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query202.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
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
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setStencilReference(1);
    
    compute_pass_encoder2050.insertDebugMarker("marker")
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_pass_encoder4010.insertDebugMarker("marker");
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    compute_pass_encoder2040.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4030.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    query205.destroy()
    query202.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    query402.destroy()
    device60.destroy();
    render_pass_encoder4030.setStencilReference(1);
    
    
    const array8 = new Float32Array([1.0, 0.25, 0.5, -1.0, -0.75, 0.0, -0.75, 1.0, 0.0, 0.25, -1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.0, -0.75, 0.25, -0.5, 0.25, -0.25, -0.5, 0.25, -0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 1.0, -0.5, 0.75, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 0.75, -0.25, 0.5, 0.5, -1.0, 0.75, -0.25, 0.0, 0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.25, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -0.5, 0.5, 0.75, -0.5, 0.25, -0.25, 0.25, -0.75, -0.75, 1.0, 0.0, -0.25, -0.25, ]);
    render_pass_encoder4030.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    texture204.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture203.destroy();
    render_pass_encoder4030.insertDebugMarker("marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    query400.destroy()
    
    query205.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query201.destroy()
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    query202.destroy()
    query205.destroy()
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4010.setStencilReference(1);
    query400.destroy()
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4020.insertDebugMarker("marker");
    
    query201.destroy()
    render_pass_encoder4030.setStencilReference(1);
    
    query202.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query401.destroy()
    texture205.destroy();
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture207 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture207 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query203.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture401.destroy();
    query205.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture207 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    query200.destroy()
    
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    device20.queue.writeTexture({ texture: texture207 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query201.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2020.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    query402.destroy()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    command_encoder800.pushDebugGroup("mygroupmarker")
    query402.destroy()
    query400.destroy()
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query204.destroy()
    query203.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    query200.destroy()
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    
    device20.queue.writeTexture({ texture: texture207 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture206.destroy();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2000.popDebugGroup()
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture207 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture207 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder2030.insertDebugMarker("marker")
    query201.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture207 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query401.destroy()
    const array9 = new Float32Array([-1.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.5, -0.5, 1.0, 1.0, -1.0, -1.0, 0.25, -1.0, -0.5, 0.0, 0.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 1.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.75, 0.25, -0.5, -0.5, 0.5, 0.25, 0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -0.25, -1.0, 0.5, -1.0, 0.25, -0.25, -0.5, -0.5, 1.0, 1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 1.0, -0.75, -1.0, 0.0, 0.5, 0.5, -0.5, -0.5, -0.5, 0.5, 1.0, -0.75, 1.0, 0.75, -1.0, 0.75, 0.75, 1.0, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, ]);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2060.insertDebugMarker("marker");
    compute_pass_encoder2050.insertDebugMarker("marker")
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query205.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query402.destroy()
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    render_pass_encoder4020.insertDebugMarker("marker");
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query403
    });
    command_encoder800.popDebugGroup()
    device20.queue.writeTexture({ texture: texture207 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    query700.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.setStencilReference(1);
    command_encoder800.pushDebugGroup("mygroupmarker")
    render_pass_encoder4000.insertDebugMarker("marker");
    
    const array10 = new Float32Array([-0.25, 1.0, 1.0, 0.75, -0.75, 0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, -1.0, -0.5, -0.5, 0.75, 1.0, -1.0, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.5, 0.0, 0.0, 0.5, -0.75, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.75, 1.0, -1.0, 0.75, -0.75, 1.0, 0.75, 1.0, 0.75, -0.5, 0.75, -1.0, -0.75, 1.0, 1.0, -0.5, 0.0, 0.5, 0.5, 1.0, 0.25, -0.5, 1.0, -0.25, -0.75, -0.5, -0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.5, 0.0, 1.0, 1.0, -0.75, -1.0, -0.75, 0.5, ]);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    device20.queue.writeTexture({ texture: texture207 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query403.destroy()
    query203.destroy()
    
    device50.destroy();
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture207 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture207 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder2060.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    device20.queue.writeTexture({ texture: texture207 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2020.popDebugGroup()
    query205.destroy()
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture207.destroy();
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query401.destroy()
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2060.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_pass_encoder2060.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    render_pass_encoder2060.insertDebugMarker("marker");
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
}