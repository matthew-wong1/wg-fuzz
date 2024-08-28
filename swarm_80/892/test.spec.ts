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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("out-of-memory");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.pushErrorScope("validation");
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.pushErrorScope("internal");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.destroy();
    device20.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query101.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query103.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query101.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query101.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query102.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.destroy();
    
    
    device30.destroy();
    query103.destroy()
    
    
    query102.destroy()
    
    query101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query102.destroy()
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    
    query101.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query101.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    query105.destroy()
    
    
    
    
    query101.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query104.destroy()
    
    
    device60.destroy();
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    
    
    query104.destroy()
    query102.destroy()
    
    query105.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    device80.destroy();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    query101.destroy()
    query100.destroy()
    
    
    
    
    query106.destroy()
    
    
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    query103.destroy()
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    query108.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query100.destroy()
    query102.destroy()
    device10.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.pushErrorScope("out-of-memory");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    query1000.destroy()
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device100.pushErrorScope("internal");
    render_bundle_encoder901.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    
    
    
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    
    
    
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    query1000.destroy()
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    query1000.destroy()
    
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1001.insertDebugMarker("marker");
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("internal");
    
    
    
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    device100.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder902.insertDebugMarker("marker");
    
    
    
    
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query901.destroy()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device90.destroy();
    
    
    
    
    
    
    
    
    device120.pushErrorScope("validation");
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    device130.pushErrorScope("internal");
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    query1300.destroy()
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    query1301.destroy()
    
    
    
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    render_bundle_encoder1200.insertDebugMarker("marker");
    
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    render_bundle_encoder1200.insertDebugMarker("marker");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    device110.pushErrorScope("out-of-memory");
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    query1301.destroy()
    
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    device140.destroy();
    
    
    
    
    
    
    
    
    
    query1300.destroy()
    
    
    
    
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    
    query1202.destroy()
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    
    
    
    
    device110.pushErrorScope("validation");
    
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query1500.destroy()
    device150.destroy();
    
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    query1200.destroy()
    query1201.destroy()
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query1202.destroy()
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    query1202.destroy()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.destroy();
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder1200.insertDebugMarker("marker");
    
    query1203.destroy()
    device120.destroy();
    device130.pushErrorScope("out-of-memory");
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    
    query1300.destroy()
    device160.pushErrorScope("validation");
    
    
    
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}