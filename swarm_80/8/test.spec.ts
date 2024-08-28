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
    
    
    
    
    const array0 = new Float32Array([-0.75, -1.0, 0.25, 0.5, 0.25, -0.25, -0.5, 0.25, 0.5, 1.0, 0.5, 0.75, 0.25, 0.75, -0.75, 0.0, 0.5, -0.5, -0.75, -1.0, -1.0, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.0, 0.75, 0.5, 0.75, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, 0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.5, -0.75, 1.0, -0.75, -1.0, 0.25, 0.0, -0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, -0.75, -1.0, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.75, -0.75, -0.75, -0.75, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, -1.0, 0.75, -0.25, -0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, -1.0, -0.5, -0.25, 0.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -0.25, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.0, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 0.5, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, 0.5, 0.75, -1.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 1.0, -0.5, 0.5, -1.0, -0.5, 0.25, -0.25, 0.25, -0.25, 1.0, 0.0, 0.25, -0.25, 0.5, 1.0, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, 0.75, 0.5, 0.0, 0.5, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, 0.25, 1.0, -0.25, -0.5, 1.0, 1.0, 0.0, -0.25, -1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 1.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.25, -0.5, 0.75, -1.0, 0.5, 0.25, 0.0, -0.25, 1.0, 0.5, 0.75, -0.25, -0.5, 0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 0.75, -0.25, 0.25, 0.75, -1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, 0.0, 0.25, -0.5, -0.75, 0.5, 0.25, 0.5, 0.25, -0.25, 0.5, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture300.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture301.destroy();
    const array3 = new Float32Array([-0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, -0.5, -0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -0.25, 0.5, -1.0, -0.5, -1.0, 1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.75, 0.0, -0.75, -1.0, -1.0, 1.0, -1.0, -0.75, -1.0, -0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.25, -0.25, -0.25, -1.0, 1.0, -1.0, 0.25, 0.25, 0.5, -0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, 0.0, 0.0, 0.5, 0.75, 0.25, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, -0.25, -0.75, 0.0, 0.0, -1.0, -0.75, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    buffer200.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device20.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    texture302.destroy();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    
    
    
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    texture400.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer300.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    
    
    device40.destroy();
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array4 = new Float32Array([1.0, 0.75, -0.25, 0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.5, 0.0, 0.75, -0.25, 0.5, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.75, -1.0, 0.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -1.0, 0.5, -1.0, -0.5, -1.0, 0.0, -0.75, 0.5, -0.75, 1.0, -1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 0.5, -0.75, -0.75, 0.5, 0.5, -1.0, 0.0, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 0.5, 0.0, -0.75, 0.5, 0.5, -0.5, 0.5, -1.0, 0.75, -1.0, -0.5, -1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.25, 1.0, -1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 0.75, 0.0, 1.0, ]);
    
    const array5 = new Float32Array([1.0, 0.0, 0.5, 0.25, 0.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.25, -0.5, 0.5, -0.25, -0.5, 1.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 1.0, 1.0, 0.0, 0.0, 0.5, 0.25, -0.25, -0.5, -0.75, 0.75, -0.5, 0.25, -0.75, -0.75, -1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 1.0, -0.5, 0.0, -0.25, -0.75, -0.75, 0.75, -0.25, 0.75, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.25, -0.75, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.0, -0.75, 0.0, 1.0, -0.25, 0.5, 0.5, 0.5, 0.0, 0.5, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, -0.25, -0.75, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-0.25, 0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -1.0, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, -0.5, 1.0, 1.0, 1.0, -0.75, -0.5, 0.0, 0.75, -0.75, -0.25, -0.5, 0.5, 0.0, -1.0, -0.5, -1.0, 0.75, 0.75, -0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 1.0, 0.5, -1.0, 1.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.75, -0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.25, 0.75, 1.0, 1.0, -1.0, -0.75, 0.5, 1.0, 0.25, -0.75, -0.75, -0.25, 0.75, 1.0, -0.25, 0.5, -1.0, 1.0, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, 0.75, 0.75, 0.75, -0.25, -0.25, -0.5, -1.0, 0.5, -0.5, 0.0, 0.5, -0.5, -0.5, 0.0, 0.5, -0.75, -0.25, ]);
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array7 = new Float32Array([-1.0, -0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.75, 0.25, 0.75, -0.25, -0.25, -0.75, 0.75, 0.25, 0.0, -0.5, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 0.25, 1.0, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 0.25, 0.5, -0.5, 0.0, -0.5, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, -1.0, 1.0, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, 1.0, -0.75, 0.25, -0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.5, 0.0, 0.75, 0.5, 0.0, 1.0, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device70.destroy();
    
    const array8 = new Float32Array([-0.25, 0.75, 0.0, 0.0, 1.0, -1.0, 0.0, -0.5, -0.25, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, -0.25, 0.5, -0.25, -0.5, -0.75, 0.25, 1.0, 0.25, 0.75, -0.75, -1.0, -0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, 0.5, -0.25, 0.0, 0.25, -0.75, -0.5, -1.0, 1.0, 1.0, -1.0, 0.5, 0.25, -0.25, 0.5, 1.0, 0.0, 1.0, -0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.25, -0.75, 0.75, 1.0, -1.0, 0.75, 0.25, -0.5, 0.0, -0.5, -0.5, 0.25, -0.75, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 0.5, -0.5, -0.25, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, -0.75, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    render_bundle_encoder801.insertDebugMarker("marker");
    
    texture802.destroy();
    
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device80.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.destroy();
    
    
    
    
    
    const array9 = new Float32Array([-0.5, -1.0, 0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 0.0, 1.0, -1.0, 1.0, -0.75, -0.5, -0.75, -0.25, -1.0, -1.0, -0.5, 0.5, -0.25, -1.0, -0.25, 0.25, -0.5, 0.25, 0.0, 0.0, -0.5, -1.0, 0.0, -0.5, 0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, -0.75, 1.0, 0.25, 0.75, -0.75, 0.75, 0.5, -0.5, 0.25, 0.25, 0.25, 0.0, 0.75, -0.25, -0.5, -0.75, -0.25, -0.25, 0.25, -0.25, 0.0, 0.75, -0.75, -0.75, 0.0, 0.5, 0.75, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, 0.75, 0.75, -1.0, 0.5, 0.0, 0.5, -0.75, -1.0, -0.5, 0.75, -0.75, 0.5, -0.75, -0.5, 0.0, -0.75, 0.0, -0.25, 1.0, -0.5, 0.75, 0.25, 1.0, -0.5, 0.5, 1.0, 0.75, 0.25, ]);
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    device100.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    
    device90.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer1200.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    
    device120.destroy();
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    const texture_view13001 = texture1300.createView({ label: "texture_view13001" });
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const texture_view13002 = texture1300.createView({ label: "texture_view13002" });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    const texture1303 = device130.createTexture({
        label: "texture1303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    texture1302.destroy();
    device130.destroy();
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array10 = new Float32Array([0.5, 0.0, -0.5, 0.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.75, -0.25, 1.0, 0.25, 0.5, -0.25, -1.0, -0.25, -1.0, -0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.5, -1.0, 0.75, -0.5, 1.0, 1.0, 1.0, -0.75, 0.75, -0.25, 0.0, 1.0, -0.25, 0.0, 0.5, 0.25, -1.0, -0.75, 0.25, 0.5, 0.25, 0.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.5, -0.75, -0.75, -0.75, -0.75, -0.25, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, 0.5, 0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.25, 0.75, 0.25, 0.5, 0.25, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 0.75, ]);
    const array11 = new Float32Array([0.0, -0.5, 1.0, 0.5, -0.75, -0.5, -1.0, 1.0, 1.0, 0.75, 0.0, -1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 1.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.75, 0.0, -0.5, 1.0, -0.75, -1.0, -0.75, 0.0, 1.0, -1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, -1.0, 0.75, -1.0, 1.0, -0.75, 0.0, -0.5, 0.0, 0.25, -0.75, -1.0, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, -1.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.0, 0.5, 0.0, -0.25, 0.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.0, 0.25, 0.75, 0.75, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, 0.5, ]);
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device150.queue.writeBuffer(buffer1500, 0, array10, 0, array10.length);
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1500.destroy()
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const array12 = new Float32Array([0.5, 0.75, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, -0.5, -0.75, -1.0, -0.25, 0.0, 1.0, -0.5, -0.25, -0.5, -0.75, -0.25, -1.0, -0.25, -0.25, -0.25, -1.0, 0.75, -0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.75, 0.0, -1.0, 0.75, -0.25, -0.75, -0.25, 0.75, -0.5, -0.75, 1.0, 1.0, -0.5, 0.25, -0.5, 0.75, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, -0.5, -0.5, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -0.25, 0.5, -0.75, -0.75, 0.25, 0.5, 0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 1.0, -0.75, 1.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.5, 0.0, 0.5, 0.5, -0.25, -0.75, 0.25, ]);
    buffer1400.destroy()
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    device150.queue.writeTexture({ texture: texture1500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device140.destroy();
    device150.queue.writeTexture({ texture: texture1500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    device150.queue.writeTexture({ texture: texture1501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1501.destroy();
    
    const sampler1502 = device150.createSampler( { label: "sampler1502" } );
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.25, 0.0, -1.0, 0.5, -1.0, -0.25, 0.25, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.5, 0.0, -0.75, -0.5, 0.0, 0.75, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, -0.75, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, -0.75, 1.0, 0.25, -0.75, 1.0, 0.75, 0.25, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 0.0, -0.25, -0.5, 0.75, 0.0, 0.75, -0.5, 0.0, 0.5, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.25, -1.0, 1.0, -1.0, -0.25, 0.25, -0.5, -1.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, ]);
    
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    
    const array14 = new Float32Array([1.0, 0.75, 1.0, 0.0, 1.0, 1.0, 0.0, -1.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.75, 1.0, 0.5, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, 1.0, 0.5, -0.25, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 0.0, 1.0, -0.25, -0.5, -0.5, -0.5, -0.25, 0.75, -0.75, 0.75, -1.0, -1.0, -0.75, 0.75, -0.5, 0.0, -0.5, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, 0.75, 0.75, 0.75, -1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, -0.25, 1.0, 0.0, -0.25, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 1.0, -0.75, ]);
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device150.queue.writeTexture({ texture: texture1500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    buffer1503.destroy()
    device150.queue.writeTexture({ texture: texture1500 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view15001 = texture1500.createView({ label: "texture_view15001" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    device150.queue.writeTexture({ texture: texture1500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.queue.writeBuffer(buffer1100, 0, array6, 0, array6.length);
    
    device150.queue.writeTexture({ texture: texture1500 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    device150.queue.writeTexture({ texture: texture1500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeBuffer(buffer1100, 0, array9, 0, array9.length);
    
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1502,
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
            module: shader_module1502,
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
    
    device160.destroy();
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile(__dirname + '/shader_module1503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    
    device110.queue.writeBuffer(buffer1100, 0, array8, 0, array8.length);
    
    buffer1501.destroy()
    
    
    const buffer1504 = device150.createBuffer({
        label: "buffer1504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device150.queue.writeBuffer(buffer1504, 0, array7, 0, array7.length);
    device150.queue.writeTexture({ texture: texture1500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeBuffer(buffer1100, 0, array11, 0, array11.length);
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    device150.queue.writeBuffer(buffer1504, 0, array1, 0, array1.length);
    device150.queue.writeBuffer(buffer1504, 0, array10, 0, array10.length);
    
    const buffer1505 = device150.createBuffer({
        label: "buffer1505",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1502,
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
            module: shader_module1502,
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
    device150.queue.writeTexture({ texture: texture1500 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device150.queue.writeTexture({ texture: texture1502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    device150.queue.writeTexture({ texture: texture1500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1500.destroy();
}