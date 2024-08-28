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
    
    const array0 = new Float32Array([0.75, -0.5, -1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, 1.0, -0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 1.0, -0.25, -0.5, 1.0, -0.5, 0.0, 0.75, 0.5, 0.0, -1.0, 0.25, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, 0.0, 1.0, 0.25, -0.25, 0.5, 0.75, 1.0, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.25, 1.0, 1.0, 0.75, 0.75, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, 0.0, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, 0.75, -1.0, 1.0, 1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.75, 0.5, 1.0, -0.25, 1.0, -0.75, 0.0, -0.25, -0.75, -0.5, -0.75, 0.25, -1.0, ]);
    const array1 = new Float32Array([0.5, -0.5, -1.0, -1.0, 0.75, -0.25, 0.25, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.5, -0.5, -0.25, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, 0.25, 1.0, 0.0, -1.0, -0.25, 1.0, -1.0, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, -0.25, 1.0, 0.75, 0.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.75, 0.5, -0.5, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, 0.25, -0.75, 0.25, 0.25, 1.0, 0.5, -0.75, 0.5, 1.0, -0.5, 0.0, 1.0, 0.0, 0.5, 0.5, -0.5, -0.25, 0.5, -0.75, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.25, 0.25, ]);
    
    const array2 = new Float32Array([-0.5, 0.0, -0.5, -1.0, -0.75, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.5, -0.25, -0.5, -0.25, 0.0, -1.0, -1.0, 1.0, -0.25, -1.0, 1.0, 0.5, -1.0, 1.0, 0.75, 0.0, -0.75, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 0.25, -0.25, -0.5, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, 0.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, 1.0, 0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -0.75, -1.0, 0.25, -0.5, -0.5, 1.0, 0.0, 0.25, -0.5, -0.5, 0.0, 0.0, 1.0, 1.0, 0.25, 1.0, 0.0, -0.25, 0.5, -1.0, ]);
    const array3 = new Float32Array([-0.25, -0.5, -0.25, -0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, -0.25, 0.25, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, -1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.0, -0.25, -0.75, 0.75, -0.75, -0.75, -1.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, -0.75, 1.0, -0.25, -0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 0.0, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 0.5, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.5, -0.5, 0.75, -0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    const array4 = new Float32Array([0.25, 0.75, 0.5, -0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, 0.25, -0.5, 0.75, -1.0, -0.75, -0.25, 0.25, 0.75, 0.5, -0.75, 0.75, 0.75, -1.0, 1.0, 0.5, -0.5, -0.5, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, -0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, -1.0, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 1.0, -0.25, 1.0, 0.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, 0.0, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, -0.5, -0.25, 0.75, 1.0, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, -0.25, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.25, -0.75, 0.5, 0.25, 0.25, 0.25, -1.0, -0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 0.75, -0.5, -0.5, -1.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, -0.5, -1.0, 0.25, -0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 1.0, -0.5, 0.25, 0.5, -1.0, -1.0, 0.75, -1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -0.5, -0.75, 1.0, 1.0, 0.5, 0.75, 0.5, -0.5, -0.75, 0.0, 0.0, -0.5, -0.5, 0.0, -1.0, -0.75, 0.0, -0.5, 0.75, 0.5, -0.75, 1.0, -1.0, -0.25, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, 1.0, -0.25, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 1.0, 0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.destroy();
    
    device10.destroy();
    
    
    
    
    const array6 = new Float32Array([0.5, 0.5, 0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.75, 0.5, 0.25, -0.75, -0.75, 0.75, -0.25, -0.25, -1.0, 1.0, 0.75, 0.75, 0.5, -1.0, -1.0, -0.5, -0.5, -0.5, 0.0, 0.0, 0.5, 0.25, -0.75, -0.75, 0.75, 0.0, 0.75, -0.25, 0.75, 0.0, -0.25, -0.25, -1.0, 1.0, -0.5, -0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.5, 1.0, -0.25, -1.0, -0.25, -1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.5, -0.5, -0.75, 0.0, 0.25, 0.5, 0.25, 0.25, 0.75, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, 0.25, -0.5, -0.25, -0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 0.0, -0.75, 0.5, -1.0, -0.5, 1.0, 0.0, 1.0, 0.25, -1.0, ]);
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.75, -1.0, 0.25, 0.5, 0.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, 1.0, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, -0.5, 0.0, -0.5, 0.75, 1.0, -0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, -1.0, -0.25, 0.25, 0.25, -0.25, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.75, 0.25, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, -0.75, 0.25, -0.5, 0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, -0.75, 1.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, ]);
    const array8 = new Float32Array([0.0, -0.25, 0.5, 0.25, 0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -1.0, -0.75, 1.0, -0.75, 0.0, 1.0, -0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, 0.25, -0.25, -0.25, 0.5, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, 0.0, -1.0, -0.5, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, -1.0, -0.25, 0.5, -0.25, 0.5, -0.75, 0.75, 0.75, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, -0.25, -0.25, 0.5, 0.75, 0.5, -0.75, -0.75, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, 0.5, 1.0, -1.0, -0.75, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_bundle_encoder300.popDebugGroup();
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.75, 1.0, -0.5, 1.0, 0.5, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.75, 0.0, -0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -1.0, -0.5, -1.0, 1.0, -1.0, 0.75, 0.0, -0.75, 0.75, -0.75, 0.0, -1.0, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.0, 1.0, 1.0, 0.75, 0.25, -0.75, -0.5, -1.0, 0.75, 0.25, 0.25, 0.25, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, 0.0, 0.25, -1.0, 0.75, 1.0, -0.5, 0.25, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, ]);
    texture302.destroy();
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array10 = new Float32Array([0.75, 0.75, 0.5, 0.25, 1.0, 0.75, 0.5, 0.0, -1.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.5, -0.75, 0.25, -0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.5, -0.5, -0.25, 0.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 0.5, -0.25, -0.25, -0.25, 0.75, 0.0, -0.25, -1.0, 0.5, -0.25, 0.5, 0.5, -0.75, -0.25, 1.0, 0.5, 0.75, -0.75, 0.75, -0.75, 1.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 1.0, -0.75, 0.5, 0.25, -0.75, -0.25, -0.75, -1.0, -1.0, 0.75, 0.5, 0.5, 0.75, 1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 1.0, -0.75, 1.0, 0.75, -1.0, ]);
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder301.popDebugGroup();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    render_bundle_encoder300.popDebugGroup();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    device50.destroy();
    
    device30.pushErrorScope("validation");
    texture305.destroy();
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture306.destroy();
    
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const array11 = new Float32Array([0.0, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.75, 0.0, -0.25, -1.0, 0.25, -1.0, -0.75, 0.75, 0.0, 0.25, 0.25, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 0.75, -0.25, -0.75, 1.0, 0.5, 0.25, 1.0, 0.0, 0.75, 0.75, 0.75, -1.0, 0.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 1.0, 1.0, -0.25, 1.0, 0.5, 0.25, -0.25, 0.75, -0.25, 0.75, 1.0, 0.0, 0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 0.75, -1.0, -0.25, 0.5, -0.5, 0.75, 0.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, 0.75, 0.0, 0.25, 1.0, ]);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device30.pushErrorScope("out-of-memory");
    
    texture304.destroy();
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture303.destroy();
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder300.popDebugGroup();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    texture600.destroy();
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    texture307.destroy();
    
    device70.destroy();
    render_bundle_encoder300.popDebugGroup();
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    render_bundle_encoder301.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.destroy();
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    
    
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([-1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.0, 0.25, 0.75, 0.0, 0.75, -0.75, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 0.0, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, -0.5, 0.0, 1.0, -0.25, -0.75, 0.5, 0.25, -0.25, 0.5, -1.0, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.25, 0.0, 1.0, -1.0, -0.75, -0.75, -0.75, -0.75, 0.75, -1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, -0.25, -1.0, -0.75, 0.75, -1.0, -0.5, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, ]);
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device60.pushErrorScope("validation");
    
    const texture_view3080 = texture308.createView({ label: "texture_view3080" });
    
    
    
    
    const texture_view3081 = texture308.createView({ label: "texture_view3081" });
    
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    device110.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    device90.destroy();
    
    
    
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture_view3082 = texture308.createView({ label: "texture_view3082" });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_bundle_encoder300.popDebugGroup();
    
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.pushErrorScope("internal");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3090 = texture309.createView({ label: "texture_view3090" });
    
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.75, 0.5, 0.5, -1.0, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 1.0, -0.75, 0.5, -0.75, -0.75, 0.25, -0.25, 0.75, -0.25, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, -0.25, 0.0, 0.5, -1.0, 0.5, -0.25, 0.75, 0.75, -0.75, -0.5, -0.25, -0.5, -0.75, 0.25, -0.25, 0.75, -0.75, 1.0, 0.0, -0.5, 0.0, 0.25, -0.75, -1.0, 1.0, 0.25, -0.5, -1.0, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, 1.0, -1.0, -1.0, 0.5, 0.25, 0.25, 0.5, -0.5, 0.25, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -1.0, 1.0, 1.0, ]);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    device30.queue.writeTexture({ texture: texture309 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeTexture({ texture: texture309 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    device80.destroy();
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    render_bundle_encoder600.popDebugGroup();
    
    device60.queue.writeTexture({ texture: texture601 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.queue.writeBuffer(buffer602, 0, array12, 0, array12.length);
    render_bundle_encoder302.popDebugGroup();
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    device30.queue.writeTexture({ texture: texture309 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture1100.destroy();
    
    device30.queue.writeTexture({ texture: texture309 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture309 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile(__dirname + '/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    
    
    
    device30.queue.writeTexture({ texture: texture309 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    device30.queue.writeTexture({ texture: texture309 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture309 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer602, 0, array12, 0, array12.length);
    
    device100.destroy();
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    texture309.destroy();
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    texture308.destroy();
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    
    device30.pushErrorScope("validation");
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const texture_view30100 = texture3010.createView({ label: "texture_view30100" });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    
    
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile(__dirname + '/shader_module3013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    
    
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture3011 = device30.createTexture({
        label: "texture3011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}