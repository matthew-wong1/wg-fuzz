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
    const array0 = new Float32Array([0.5, -0.25, 0.5, -0.25, -0.5, 0.75, -1.0, -0.25, -0.5, 1.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.75, 0.25, 0.25, 0.5, 0.0, -0.5, 1.0, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.5, 0.75, 0.25, -1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.25, -0.5, 0.5, 0.5, -0.5, 1.0, 0.75, 0.75, -0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, -0.75, -0.75, 0.0, 0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, 0.0, 1.0, -0.5, -0.75, -0.5, -0.5, -0.5, -0.25, -1.0, 0.5, -0.75, -0.25, 0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, 0.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array1 = new Float32Array([-1.0, -0.75, -0.5, -1.0, 0.25, 0.25, -0.75, 0.75, 0.0, 0.75, -0.25, -0.75, 0.25, -0.75, 0.0, 0.5, -0.75, 0.75, 1.0, -0.25, -0.25, 1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.5, -0.75, 0.75, 0.5, -0.25, 0.75, -0.5, 1.0, -1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 0.75, -0.75, 0.0, 1.0, 1.0, 0.25, -1.0, -1.0, 0.5, -0.5, 0.75, 0.75, 0.5, 0.0, -0.25, 0.0, 1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.75, -1.0, -0.5, 0.25, -0.5, -1.0, -0.5, -0.75, 0.75, 1.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.25, 0.75, 0.25, 0.5, 0.0, 0.75, ]);
    
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-0.5, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -0.25, -0.75, 0.5, -0.75, 0.5, 0.75, 0.0, 0.25, -1.0, 0.75, 1.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, -0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -0.5, -0.75, -1.0, 1.0, -0.75, -0.5, -0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.75, 1.0, -0.75, 0.0, -0.75, 0.75, 0.5, -0.5, 0.5, 0.5, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, 1.0, 0.5, -0.25, -0.5, -1.0, 1.0, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array3 = new Float32Array([-0.5, 0.5, 0.75, -0.25, 0.5, 0.5, 1.0, -1.0, 1.0, -0.25, -1.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.75, 0.25, 1.0, -1.0, -0.25, -0.25, 1.0, 0.5, 0.0, -1.0, -0.25, 0.75, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.25, -1.0, 0.75, -0.5, -0.25, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, -0.75, -0.75, -0.5, 0.0, -0.25, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 0.75, -0.25, 0.0, 0.25, 0.5, 1.0, -1.0, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.75, -0.25, -0.25, 0.0, -1.0, -0.5, 0.0, 0.0, 1.0, 0.0, 0.75, ]);
    device20.pushErrorScope("internal");
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([0.5, 0.75, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, -0.5, 0.5, -1.0, 0.75, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, 0.5, -0.25, 1.0, -0.5, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 0.5, 1.0, 0.75, 0.5, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.75, 1.0, 0.25, 0.5, 0.25, 0.0, -1.0, 0.75, -1.0, -0.25, 0.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.25, -0.5, -0.75, -0.5, -1.0, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("out-of-memory");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    query102.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    device00.pushErrorScope("internal");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    device10.pushErrorScope("validation");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.75, -1.0, 0.25, -0.75, -0.5, -0.75, 0.0, -0.75, -0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.25, 1.0, 0.0, -0.5, -0.75, 0.25, 0.0, 1.0, 0.75, -0.75, -1.0, -1.0, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, 0.0, -0.5, 1.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, 1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.75, 1.0, -1.0, 0.0, 0.5, 1.0, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.75, -0.75, 1.0, 0.75, -0.25, 0.5, -0.25, -0.25, 0.0, 0.25, -1.0, -0.25, -0.5, 1.0, -0.5, -0.75, 0.0, -0.5, 1.0, -0.25, 0.75, ]);
    
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    query000.destroy()
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query103.destroy()
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    
    query100.destroy()
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query003.destroy()
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    query003.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    
    
    query100.destroy()
    
    
    
    query003.destroy()
    device20.pushErrorScope("out-of-memory");
    
    query003.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.pushErrorScope("validation");
    query101.destroy()
    
    query401.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query104.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.pushErrorScope("internal");
    const array6 = new Float32Array([-1.0, -0.75, -1.0, 0.75, 0.0, -1.0, 0.0, -0.5, -1.0, 0.25, 1.0, 0.5, -0.25, 0.0, -1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 1.0, 0.25, -0.5, 0.5, -1.0, 0.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, -0.5, 0.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, -0.75, 0.0, -0.75, 0.75, -1.0, 0.25, 0.5, -0.25, -1.0, 1.0, -0.25, -1.0, -0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 1.0, -0.25, -0.25, -0.5, 0.0, -0.25, -0.75, ]);
    query102.destroy()
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array7 = new Float32Array([0.25, -0.25, -0.25, 0.0, 1.0, -0.75, -0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.5, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, -1.0, -0.5, -1.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.5, 0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 0.25, -0.75, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.75, -0.5, -0.5, ]);
    
    
    const array8 = new Float32Array([0.75, 0.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 1.0, 0.5, -0.25, 1.0, 0.5, 0.5, 0.75, -0.75, -0.25, 1.0, 0.75, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 1.0, -1.0, -0.75, 0.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, 0.25, 1.0, 0.75, 0.25, -0.5, 0.25, -0.5, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, -0.25, 0.5, 0.0, -1.0, -0.5, -0.25, 0.5, -1.0, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, 1.0, -0.5, -0.25, -0.75, -0.75, 0.75, -0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.25, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array9 = new Float32Array([0.25, -0.75, 0.25, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, -0.75, -0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 0.25, -0.75, 0.0, 0.75, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, -0.25, -0.5, -0.25, 0.25, -0.75, 0.0, -0.75, 0.75, 0.5, -0.25, -0.5, -0.75, 0.5, -1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 1.0, -0.5, 0.25, -0.5, -0.75, 0.5, 0.5, 1.0, -0.75, -0.75, -1.0, 0.75, 0.75, 1.0, 0.0, 1.0, 0.75, 0.75, -0.25, -0.25, -0.5, -0.5, 0.0, 0.25, -0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 0.0, -1.0, 0.5, 1.0, 0.0, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, ]);
    query103.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query100.destroy()
    
    query102.destroy()
    device50.pushErrorScope("internal");
    
    
    
    
    
    query200.destroy()
    query002.destroy()
    
    
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query003.destroy()
    
    
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    
    
    device20.pushErrorScope("out-of-memory");
    query500.destroy()
    
    device00.pushErrorScope("validation");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("internal");
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    query201.destroy()
    
    query500.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    query500.destroy()
    
    query104.destroy()
    query100.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query003.destroy()
    query300.destroy()
    device20.pushErrorScope("validation");
    
    device00.pushErrorScope("validation");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query002.destroy()
    query100.destroy()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    query500.destroy()
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    query400.destroy()
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array10 = new Float32Array([-0.75, 1.0, 0.75, -1.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.75, -1.0, 0.75, -0.25, -0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 0.25, -1.0, 0.5, 1.0, 0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.75, -0.5, -0.75, 1.0, 0.0, -0.5, -1.0, 0.75, 0.25, -0.75, 0.25, 0.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 0.5, -0.25, -0.75, 0.0, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, 0.25, 0.0, 0.5, -0.25, -0.25, -0.25, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, -0.25, 0.5, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.25, -1.0, 0.0, -0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.5, -0.75, -0.5, 0.25, ]);
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array11 = new Float32Array([-0.5, -0.5, -0.75, 0.25, -0.25, 1.0, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 0.0, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 0.75, 0.0, -1.0, 0.25, 1.0, 0.5, 0.5, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, 0.5, 0.0, 0.25, 0.25, 0.5, 1.0, 0.0, 0.25, 0.5, -0.75, -1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.0, -1.0, -0.5, 1.0, -1.0, 0.0, -0.25, 0.5, -1.0, -0.75, -0.75, -0.75, -0.25, -0.75, -1.0, 1.0, -0.25, -0.25, -0.25, 0.25, -0.25, 0.0, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, 0.25, 0.5, -0.5, -0.25, 0.5, ]);
    const array12 = new Float32Array([-0.25, 0.25, -1.0, 0.75, 0.25, -1.0, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, 0.75, 1.0, -0.5, -0.75, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, 1.0, -0.25, -0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, -0.75, -0.5, 0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -1.0, -0.25, 0.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 1.0, -0.25, 0.0, 1.0, 0.25, -0.25, 1.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -0.75, 0.5, -0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 0.25, ]);
    query002.destroy()
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    query000.destroy()
    
    query202.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    query003.destroy()
    query300.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    device20.pushErrorScope("validation");
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query104.destroy()
    
    query104.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    
    query004.destroy()
    query200.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query405.destroy()
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.pushErrorScope("internal");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    query400.destroy()
    
    query002.destroy()
    
    query202.destroy()
    query004.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query104.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query401.destroy()
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query104.destroy()
    
    query005.destroy()
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    
    device20.pushErrorScope("internal");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query006.destroy()
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    
    
    query105.destroy()
    query405.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const array13 = new Float32Array([0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 0.0, 0.75, -0.5, 0.25, 0.25, -1.0, -0.5, -0.5, 1.0, 0.25, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.25, 0.0, 0.5, 0.5, -0.75, -0.75, 0.5, 0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, -0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -1.0, -1.0, -0.25, 0.0, -0.5, 1.0, 0.5, -0.5, 0.25, 0.25, -1.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.5, 0.0, 0.0, -0.75, -1.0, -0.5, -0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.5, 0.75, ]);
    
    
    
    
    query405.destroy()
    query200.destroy()
    
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const array14 = new Float32Array([-0.75, -0.75, 1.0, 0.25, 0.0, -0.25, 0.0, -0.75, -0.75, -0.5, 0.25, 1.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.75, 0.0, 1.0, -0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.75, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, -0.75, -0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -0.75, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, 0.25, -1.0, 0.25, -0.75, 0.5, 0.75, 1.0, 0.75, -0.75, 0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.5, 0.25, 0.75, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -0.25, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 0.75, 1.0, ]);
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query103.destroy()
    
    
    
    
    query105.destroy()
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query406.destroy()
    query401.destroy()
    
    
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    query108.destroy()
    query002.destroy()
    
    device50.pushErrorScope("validation");
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query300.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query700.destroy()
    query403.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}