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
    
    const array0 = new Float32Array([-0.75, -0.5, -0.5, 0.0, 0.5, 1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, 0.5, 0.25, 1.0, 0.0, 0.5, 1.0, 0.5, -0.5, 0.5, -0.5, 0.75, -0.25, -0.75, 0.25, -0.5, 0.75, 0.25, 1.0, 0.25, -0.5, -0.75, 1.0, 0.0, 0.0, -0.25, -0.75, 0.0, -0.5, -0.75, -0.25, -0.75, 1.0, -0.5, 0.0, 0.0, 0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 0.5, -1.0, 0.25, -0.75, -0.25, -0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 0.25, 0.75, -0.25, 1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 0.5, 0.5, -0.75, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, 0.0, 0.0, -0.25, 1.0, 0.5, -0.75, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.75, 0.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, -1.0, -0.75, -0.75, -0.25, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, -0.75, 0.25, 0.75, -1.0, -1.0, -0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.75, 0.25, 0.25, 0.25, -0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.75, -1.0, 0.75, -0.25, -0.75, 0.0, -0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.5, -1.0, -0.25, 0.75, 1.0, 0.0, 1.0, -1.0, -0.25, 1.0, 1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array2 = new Float32Array([0.0, 0.75, 1.0, -0.5, -1.0, 0.0, 0.5, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 1.0, 1.0, 0.75, 0.0, 0.75, 0.5, -0.5, -1.0, 0.0, -0.25, -0.5, 0.5, 0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 1.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.5, 0.5, 0.75, -0.5, -1.0, 0.25, 0.75, 0.75, -0.75, -1.0, 0.5, 0.75, 0.25, 0.5, -0.5, 0.5, 0.5, -1.0, -1.0, -1.0, -1.0, 0.0, 1.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, -0.25, 0.5, -0.5, 0.0, -1.0, 0.0, 0.25, 0.0, 0.25, -0.5, 0.75, 0.75, 1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 0.0, -0.75, 1.0, 0.25, 1.0, -1.0, -0.25, 0.5, -0.25, -0.75, 0.75, 0.25, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const array3 = new Float32Array([-0.75, 0.5, 0.0, -0.25, 0.5, 0.25, -0.75, -0.75, 0.75, -0.5, 1.0, 0.0, -0.75, 0.5, -0.25, 0.5, -0.5, -0.25, 1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.0, 0.75, -1.0, -1.0, 0.25, -1.0, 1.0, 0.25, 1.0, 0.25, -1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 1.0, 1.0, 0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.25, 0.25, 0.25, 0.75, -1.0, 0.0, 0.5, 0.75, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 1.0, -0.5, 0.0, -0.25, 0.25, -0.5, -1.0, 0.75, 0.75, 0.25, -0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.75, 1.0, 0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.destroy();
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("validation");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer300.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query301.destroy()
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.pushErrorScope("out-of-memory");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.pushErrorScope("internal");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    const array4 = new Float32Array([0.75, -0.25, 0.5, 0.25, 1.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, 0.25, 0.25, 0.5, 0.75, 0.75, 1.0, 0.5, -0.75, -0.75, 0.25, 0.75, -0.75, 0.25, 0.25, -0.5, -1.0, -0.75, -0.75, 0.0, -0.25, 1.0, -0.25, -0.75, 0.0, 0.75, -0.5, -0.75, 0.5, 0.5, 0.75, 0.0, -0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 0.25, -0.75, 1.0, 0.0, 0.5, 0.75, 0.0, -0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, -0.75, -1.0, -0.25, -0.75, -0.75, -1.0, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.75, 0.5, 1.0, 0.75, 0.25, -0.75, -1.0, ]);
    
    
    const array5 = new Float32Array([-0.25, -0.25, 0.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -1.0, 1.0, 0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, 1.0, -1.0, -0.25, -0.5, -0.5, -1.0, -0.25, -0.75, 1.0, 0.75, -0.75, -0.75, -0.5, -0.75, 0.5, 0.5, -1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, 0.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.25, 0.25, 0.5, 0.25, 0.5, 0.0, 1.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, -0.75, 1.0, ]);
    
    
    
    
    const array6 = new Float32Array([0.5, 0.5, -1.0, 0.0, -0.25, 0.0, -1.0, 0.25, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, -0.5, 1.0, 0.25, 0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, 0.25, -0.25, 0.75, -1.0, 0.0, 0.25, -0.75, -0.5, -0.25, 0.75, -0.25, -0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -0.5, 0.0, 0.25, 0.25, 0.25, 1.0, 0.75, -0.25, 1.0, -1.0, 0.75, 1.0, -0.5, 0.5, 0.75, 0.5, 0.75, 1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.0, 0.75, -0.75, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -1.0, -1.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const array7 = new Float32Array([0.0, 1.0, -1.0, 0.25, 0.0, -1.0, -0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.25, 0.0, -1.0, -0.25, 1.0, 0.0, 0.75, 0.75, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, 0.5, 0.25, -0.25, -0.5, -0.75, -0.5, 0.5, -0.75, -0.25, 0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.25, -1.0, 0.25, 0.75, 1.0, 0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.5, 0.5, -1.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -0.25, 0.5, 1.0, -0.75, 0.25, -0.25, -0.5, 0.75, 0.0, -0.25, 0.75, -0.75, 0.0, -0.25, 0.75, 0.75, -0.25, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device70.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array8 = new Float32Array([0.5, 0.25, 0.0, -1.0, 0.75, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 1.0, 0.25, -1.0, -0.5, -0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.0, 0.25, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 1.0, 0.75, 1.0, 1.0, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.75, 1.0, -0.5, 0.25, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.75, -0.75, -0.5, 0.0, 0.75, -1.0, -0.75, 0.5, -0.25, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, -0.5, ]);
    const array9 = new Float32Array([-0.5, 0.0, 0.0, 0.0, -1.0, -1.0, -0.25, -0.25, 0.5, 1.0, 0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.25, 0.75, -0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.25, -1.0, -0.75, -0.25, -0.75, -1.0, -0.5, -0.5, 1.0, 0.25, 0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.0, 0.0, 0.25, -0.75, -0.5, 0.0, -0.75, -0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, -1.0, -0.75, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, ]);
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer600.destroy()
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([1.0, -0.5, -1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, 0.25, -1.0, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, 0.75, -1.0, -1.0, 0.5, -0.25, 0.75, 0.5, 0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, 0.5, 1.0, -0.5, 0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, -0.25, ]);
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer601.destroy()
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    query600.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array11 = new Float32Array([-1.0, 0.0, -0.75, -0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, -0.25, 0.25, -1.0, 0.75, 1.0, 0.75, 0.5, -0.25, -0.25, -0.25, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.0, 0.0, 0.0, -0.75, 0.0, 0.75, 0.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.75, 0.5, 0.0, 1.0, 1.0, -0.25, 0.25, -0.5, 0.75, 0.5, -0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, -0.75, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 1.0, 1.0, 1.0, 0.5, ]);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device100.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    query601.destroy()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer602.destroy()
    buffer900.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device110.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device80.destroy();
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    query900.destroy()
    
    buffer901.destroy()
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    
    device60.pushErrorScope("internal");
    query600.destroy()
    buffer603.destroy()
    
    query900.destroy()
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device120.pushErrorScope("validation");
    query900.destroy()
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    
    query601.destroy()
    device60.pushErrorScope("out-of-memory");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    render_bundle_encoder900.popDebugGroup();
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device90.destroy();
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array12 = new Float32Array([0.75, 0.0, 0.75, -0.5, 1.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.5, -1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.5, 0.5, 0.25, 0.75, -0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, 1.0, -0.25, 0.25, -0.25, 0.5, -0.25, 0.25, 0.0, 0.5, 0.25, -1.0, -0.5, -0.75, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, 0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 0.75, -1.0, 0.75, 0.25, 0.5, 0.75, 0.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.5, -0.25, 1.0, -0.25, -0.25, 0.5, -0.75, -1.0, 0.75, 0.25, 0.25, 0.75, ]);
    
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const array13 = new Float32Array([0.5, -1.0, -1.0, -0.5, 0.75, 0.5, -0.5, -0.25, -0.75, 0.75, -0.25, -0.5, 0.0, 1.0, 0.0, 0.75, -0.25, -0.75, 1.0, 0.5, 0.0, 0.25, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, 0.75, -0.75, 0.75, 0.25, -0.5, 0.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, 0.75, -0.5, -1.0, -0.25, 0.0, -0.25, 0.25, 0.75, -0.75, 0.0, 0.5, 0.0, -0.25, -0.75, -0.5, -0.25, -0.25, 1.0, -0.5, 0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.0, 1.0, -0.25, 0.0, 0.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, -0.5, -0.75, 0.75, -1.0, 1.0, -0.5, ]);
    
    
    
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder600.popDebugGroup();
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    
    device120.queue.writeBuffer(buffer1201, 0, array11, 0, array11.length);
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder602.setPipeline(render_pipeline600);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device120.queue.writeBuffer(buffer1201, 0, array12, 0, array12.length);
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device150.destroy();
    
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    
    render_bundle_encoder601.popDebugGroup();
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1200,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    {
        await buffer1201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1201.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    device120.queue.writeBuffer(buffer1201, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer608, 0, array10, 0, array10.length);
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device120.queue.writeBuffer(buffer1201, 0, array13, 0, array13.length);
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    render_bundle_encoder602.popDebugGroup();
    device60.queue.writeBuffer(buffer608, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer608, 0, array6, 0, array6.length);
    
    
    
    buffer605.destroy()
    
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer1201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1201.unmap();
        console.log(new Float32Array(data));
    }
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device120.queue.writeBuffer(buffer1201, 0, array0, 0, array0.length);
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    device60.queue.writeBuffer(buffer608, 0, array10, 0, array10.length);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    device120.queue.writeBuffer(buffer1201, 0, array12, 0, array12.length);
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    const array14 = new Float32Array([-0.25, -0.75, 0.75, 1.0, 0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.75, 1.0, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, 0.75, 0.5, 1.0, 0.0, -0.5, -0.25, -0.5, 1.0, -1.0, 0.5, 0.25, 1.0, -0.5, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, -0.75, -0.5, 0.0, -0.75, -0.25, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.25, 0.25, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, 0.0, 0.5, 0.5, 0.75, -0.5, 0.25, 0.25, 0.75, 1.0, ]);
    render_bundle_encoder602.insertDebugMarker("marker");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device120.queue.writeBuffer(buffer1201, 0, array10, 0, array10.length);
    render_bundle_encoder601.setVertexBuffer(0, buffer605);
    
    
    
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    buffer1200.destroy()
    device60.queue.writeBuffer(buffer608, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer608, 0, array6, 0, array6.length);
    device120.queue.writeBuffer(buffer1201, 0, array8, 0, array8.length);
    device120.queue.writeBuffer(buffer1201, 0, array2, 0, array2.length);
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    device120.queue.writeBuffer(buffer1201, 0, array11, 0, array11.length);
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeBuffer(buffer608, 0, array2, 0, array2.length);
    query605.destroy()
    
    device120.queue.writeBuffer(buffer1201, 0, array11, 0, array11.length);
    
    device160.pushErrorScope("out-of-memory");
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer608, 0, array9, 0, array9.length);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device120.queue.writeBuffer(buffer1201, 0, array1, 0, array1.length);
    
    query602.destroy()
    
    
    
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    query603.destroy()
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    query605.destroy()
    
    
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1202,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    query1301.destroy()
    
    
    query1301.destroy()
    device60.queue.writeBuffer(buffer608, 0, array13, 0, array13.length);
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    query1301.destroy()
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device140.destroy();
    {
        await buffer1201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1201.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder601.insertDebugMarker("marker");
    device120.queue.writeBuffer(buffer1201, 0, array10, 0, array10.length);
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group602);
    const array15 = new Float32Array([-1.0, -0.75, -1.0, -1.0, -0.75, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.0, -0.75, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 0.0, -0.5, 0.5, 0.75, 0.0, 1.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.5, -0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, -0.75, 0.75, -0.75, 0.0, -0.75, -0.5, -0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.0, 0.0, 0.5, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 0.75, -0.25, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 1.0, 0.0, -0.5, 0.25, -0.75, 0.25, 0.25, 0.25, ]);
    device60.queue.writeBuffer(buffer608, 0, array14, 0, array14.length);
    
    device60.queue.writeBuffer(buffer6013, 0, array6, 0, array6.length);
    device170.queue.writeBuffer(buffer1700, 0, array14, 0, array14.length);
    buffer1201.destroy()
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.queue.writeBuffer(buffer608, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer6013, 0, array13, 0, array13.length);
    
    const array16 = new Float32Array([1.0, 0.75, -0.25, 0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, 0.25, -1.0, -0.25, -0.25, 0.75, 0.0, -0.25, -0.75, 1.0, 0.75, 1.0, -0.25, 0.5, 0.25, -0.25, 0.0, -0.5, 0.5, -1.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, -0.5, -0.5, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, 1.0, 0.25, 0.25, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, -1.0, -0.5, -1.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.75, 1.0, 0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 0.25, 0.5, -1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.5, -1.0, 0.0, -0.75, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.75, -0.25, ]);
    render_bundle_encoder602.setVertexBuffer(0, buffer605);
    buffer1700.destroy()
    
    device60.queue.writeBuffer(buffer608, 0, array7, 0, array7.length);
    
    
    buffer608.destroy()
    device60.queue.writeBuffer(buffer6013, 0, array16, 0, array16.length);
    buffer1600.destroy()
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    buffer6014.destroy()
    
    
    buffer606.destroy()
    const query608 = device60.createQuerySet({
        label: "query608",
        type: "occlusion",
        count: 32,
    });
    device160.pushErrorScope("out-of-memory");
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    buffer6011.destroy()
    const query609 = device60.createQuerySet({
        label: "query609",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer6013, 0, array5, 0, array5.length);
    query1301.destroy()
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const buffer1701 = device170.createBuffer({
        label: "buffer1701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device170.pushErrorScope("out-of-memory");
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    query604.destroy()
    query1300.destroy()
    buffer607.destroy()
    buffer6013.destroy()
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device170.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}