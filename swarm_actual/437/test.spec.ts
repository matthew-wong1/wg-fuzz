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
    const array0 = new Float32Array([0.0, 0.0, -0.25, 0.75, 0.25, -1.0, 0.5, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, -0.75, 0.5, -0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, 0.75, 0.5, 0.75, 1.0, 1.0, -1.0, 0.75, 1.0, 0.25, 0.5, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, -1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.25, 0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.25, 0.0, -0.75, 0.25, 0.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.25, 0.25, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, 0.25, 1.0, -1.0, 0.5, 0.75, 0.0, 0.5, 0.0, 0.5, 0.0, 0.5, 1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, 0.0, -0.5, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const array1 = new Float32Array([-0.5, 0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -1.0, 1.0, 0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 0.25, -0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 1.0, -0.5, -0.75, 1.0, -0.75, -0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.75, 0.25, 0.5, 0.25, -0.25, -0.75, 0.25, 1.0, -0.25, -0.5, -0.75, -0.75, -0.25, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, -0.25, 0.75, -0.75, 0.5, 1.0, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    
    
    
    const array2 = new Float32Array([0.5, -0.25, 0.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, -0.5, 0.0, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, 0.5, 0.0, 0.0, 1.0, -0.25, -0.75, 1.0, 0.0, -0.5, -0.75, -1.0, -0.75, 0.0, 0.0, -0.25, 0.0, -0.5, -0.25, -0.75, 0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 1.0, 0.0, -0.25, 0.25, 0.75, 0.5, 0.5, -0.5, -1.0, -1.0, 0.75, -0.5, 0.75, 0.25, 0.75, 1.0, -0.25, -0.75, 0.0, -0.25, 1.0, 0.75, 0.5, -0.5, 0.25, -0.75, 0.25, 0.25, 0.75, -0.25, -0.75, -0.5, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device30.pushErrorScope("out-of-memory");
    device20.pushErrorScope("internal");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array3 = new Float32Array([0.25, 0.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 1.0, 0.25, 0.5, -0.75, -0.75, 0.75, -1.0, 1.0, 0.0, 0.75, -0.75, 0.5, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, -1.0, 1.0, 0.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.75, -0.5, 0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -0.75, 0.5, -0.5, 1.0, 0.25, 1.0, 0.5, -0.25, 0.25, 0.0, -1.0, -0.75, 0.0, 1.0, -1.0, -0.25, 0.75, -0.25, 1.0, 0.0, 0.25, 0.25, 1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 0.25, 0.0, 0.5, 0.5, 0.5, -0.25, -0.5, 0.0, -0.75, -1.0, -0.25, -0.75, -0.75, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.pushErrorScope("validation");
    device20.pushErrorScope("validation");
    
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const array4 = new Float32Array([0.75, 1.0, 0.25, 0.0, 0.75, -0.25, 0.0, -0.25, -0.25, -0.25, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, 0.5, 0.0, 0.75, 0.75, 1.0, -0.5, -0.5, -0.5, 1.0, 0.25, -0.75, 0.0, -0.75, 0.75, 0.25, 0.0, -0.5, 0.5, 0.5, -0.5, 0.0, 0.25, 0.75, 0.25, 1.0, 0.25, -1.0, -0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.25, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, 1.0, -0.25, -0.75, -0.25, 0.25, 1.0, -0.5, 0.25, 0.25, -0.5, 0.5, 1.0, 0.25, -1.0, 0.25, 0.25, 0.75, -0.5, -0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, -1.0, 1.0, 0.25, -0.25, -1.0, 0.25, -0.75, -0.25, -1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -0.5, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.pushErrorScope("validation");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    device00.pushErrorScope("internal");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder401.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 0.0, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.75, -0.5, 1.0, 1.0, -0.75, 1.0, 0.75, -0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -1.0, -0.75, -0.75, -0.25, 1.0, -1.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.25, -0.5, -1.0, 1.0, -0.75, 1.0, 1.0, -0.25, -0.5, -1.0, 1.0, 0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.25, -0.75, -0.75, 0.25, 0.0, -1.0, 0.75, -1.0, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.0, 0.25, -1.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.25, -0.75, -0.75, 1.0, 1.0, 0.25, ]);
    const command_buffer000 = command_encoder000.finish();
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture300.destroy();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer403 = command_encoder403.finish();
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.25, -0.5, 0.5, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.25, 0.75, 0.25, -0.25, -0.75, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, 0.25, 0.0, -0.5, 0.25, -0.75, 0.75, 0.75, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, -0.5, -0.25, 0.5, 0.0, -0.25, -1.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.5, 0.5, 0.0, -0.25, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.75, -0.25, 0.75, -0.75, -0.25, 1.0, 0.5, -0.5, 0.0, 1.0, 0.5, 1.0, -1.0, 0.75, 0.0, 0.25, 1.0, -0.75, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, -1.0, -1.0, -1.0, -0.75, -1.0, -0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.25, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder305.pushDebugGroup("mygroupmarker")
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder305.copyBufferToTexture(
        {
            buffer: buffer302
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device80.destroy();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2020.popDebugGroup()
    texture600.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    command_encoder306.copyBufferToTexture(
        {
            buffer: buffer302
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_buffer402 = command_encoder402.finish();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture301.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture202.destroy();
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.pushErrorScope("validation");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    texture400.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    compute_pass_encoder3040.popDebugGroup()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder2040.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3020.popDebugGroup()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder2030.popDebugGroup()
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([0.25, -0.25, -1.0, 1.0, 0.5, 1.0, 0.0, -0.75, 1.0, -0.25, -0.25, -0.75, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, 0.5, 0.75, 0.25, 0.25, 0.0, 0.0, -1.0, 0.0, 0.75, 0.5, 0.5, 0.5, -0.5, 0.5, -0.5, 0.25, -1.0, 0.75, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.0, 0.5, 0.75, -1.0, 1.0, 0.75, 0.0, -1.0, 1.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, -0.25, -1.0, 1.0, 0.5, -0.25, 0.5, -1.0, 0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, -0.5, -0.75, -0.25, 1.0, -0.5, 1.0, ]);
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    texture203.destroy();
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device40.pushErrorScope("out-of-memory");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const command_buffer600 = command_encoder600.finish();
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device20.pushErrorScope("validation");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    texture601.destroy();
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    command_encoder207.pushDebugGroup("mygroupmarker")
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder206.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3060.popDebugGroup()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    render_bundle_encoder700.insertDebugMarker("marker");
    texture000.destroy();
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const array8 = new Float32Array([-1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 1.0, -1.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 0.75, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, -0.25, 0.5, 0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, 1.0, -0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 0.5, 1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.0, 0.25, 1.0, 0.75, 1.0, ]);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array9 = new Float32Array([0.75, 1.0, 0.75, -1.0, -0.75, 1.0, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.5, 0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -1.0, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 0.25, -0.5, -1.0, 1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, -1.0, 0.0, -0.5, 0.5, -0.25, -0.25, 0.5, 0.75, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 0.0, -0.5, -0.25, 0.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.75, -0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, -0.25, -1.0, 0.25, -0.5, -0.75, 0.25, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    device100.pushErrorScope("validation");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    texture001.destroy();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    command_encoder307.copyBufferToBuffer(
        buffer302,
        0,
        buffer305,
        0,
        400
    );
    const texture_view3025 = texture302.createView({ label: "texture_view3025" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3040.popDebugGroup()
    
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer307 = command_encoder307.finish();
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device40.pushErrorScope("validation");
    render_bundle_encoder301.insertDebugMarker("marker");
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.popDebugGroup()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2030.popDebugGroup()
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    texture1000.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer402, ]);
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.popDebugGroup()
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder4010.popDebugGroup()
    texture204.destroy();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    compute_pass_encoder0020.popDebugGroup()
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const array10 = new Float32Array([-0.5, 1.0, 1.0, 0.25, 0.25, 0.75, -0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.5, -1.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.75, 0.5, -1.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.5, 0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 0.5, 0.75, 1.0, 0.0, -0.25, 0.75, 0.75, 0.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -0.5, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.75, 1.0, -1.0, -1.0, -1.0, 1.0, -0.75, -0.75, ]);
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device30.queue.submit([command_buffer307, ]);
    device30.queue.writeBuffer(buffer305, 0, array10, 0, array10.length);
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder207.copyBufferToTexture(
        {
            buffer: buffer206
        },
        {
            texture: texture205
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture303.destroy();
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const command_buffer208 = command_encoder208.finish();
    texture1002.destroy();
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    texture205.destroy();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7010.popDebugGroup()
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    render_bundle_encoder700.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    texture500.destroy();
    const array11 = new Float32Array([0.75, -0.75, -0.25, 1.0, 1.0, 0.0, 0.5, 0.5, -0.75, 0.0, 0.75, 0.25, 0.25, -0.75, 0.25, 0.0, -0.25, 1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.25, -0.5, 0.75, 0.25, -0.25, 0.5, 0.25, 1.0, 0.25, 0.75, 0.5, 0.75, 0.75, -0.5, -0.75, -1.0, -1.0, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, -1.0, -0.5, 0.0, 1.0, -0.25, -0.75, -0.5, 0.25, 0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, -1.0, -0.25, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, -0.5, -0.25, -0.25, 0.25, -0.5, -1.0, 0.5, 0.0, ]);
    texture206.destroy();
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    const command_buffer209 = command_encoder209.finish();
    const command_buffer1000 = command_encoder1000.finish();
    device20.queue.submit([command_buffer208, command_buffer209, ]);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const command_buffer308 = command_encoder308.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer308, ]);
    device100.queue.submit([command_buffer1000, ]);
}