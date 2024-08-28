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
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("out-of-memory");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.pushErrorScope("out-of-memory");
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device40.destroy();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device50.destroy();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    device70.destroy();
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("internal");
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    device90.destroy();
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    
    
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    device80.pushErrorScope("out-of-memory");
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.pushErrorScope("out-of-memory");
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    device130.destroy();
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device140.destroy();
    device110.destroy();
    
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    
    
    
    
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler607 = device60.createSampler( { label: "sampler607" } );
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    
    
    
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    
    const sampler2012 = device20.createSampler( { label: "sampler2012" } );
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler2013 = device20.createSampler( { label: "sampler2013" } );
    
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    
    const query1013 = device10.createQuerySet({
        label: "query1013",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    
}