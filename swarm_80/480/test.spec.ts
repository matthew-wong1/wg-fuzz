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
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.75, -0.75, -0.75, 1.0, -0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, -0.25, 0.75, 0.5, -0.5, -0.75, -0.5, -0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.75, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, -0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, 0.75, 0.75, -0.5, 0.25, 0.5, 0.75, 0.5, 0.5, 1.0, -1.0, 0.5, -0.5, -1.0, -1.0, 0.75, 0.25, 0.0, -0.75, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, 0.5, -0.75, -1.0, -0.25, -0.25, -0.5, -0.5, -0.25, -0.25, -0.5, -0.75, -0.5, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, -0.75, 0.5, 1.0, 0.75, -1.0, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([1.0, -0.75, -0.5, 0.0, 0.75, 0.5, -0.75, 0.5, -0.25, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 0.0, 1.0, -1.0, 0.75, 0.75, 0.75, -1.0, -0.75, 1.0, 0.5, -0.5, -0.25, 0.75, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, 0.75, 0.5, -1.0, 1.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, 0.25, 0.25, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, -0.5, -0.25, 0.25, 0.75, 0.5, -0.5, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.5, -1.0, -0.5, 0.0, -1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 1.0, ]);
    
    
    const array2 = new Float32Array([0.5, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 0.75, -1.0, 0.5, 1.0, 1.0, -1.0, -0.5, -0.5, -1.0, 0.0, 0.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.75, -0.25, -1.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 1.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -1.0, -0.75, 0.5, 0.5, 0.75, -0.25, -1.0, 0.0, 0.0, -0.25, -0.5, -0.25, -0.25, -0.5, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.25, -0.75, 1.0, -1.0, -0.75, -0.5, 0.75, -0.75, -1.0, 1.0, 0.75, 0.75, -1.0, -1.0, -0.75, -0.25, -0.25, 0.5, 0.25, 0.5, ]);
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.75, -0.5, 0.0, -0.5, 1.0, 0.25, -1.0, 0.0, -0.75, 0.25, -0.75, -1.0, -0.5, 0.5, -1.0, -0.25, 1.0, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.25, 0.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, 1.0, 0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, 1.0, -0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, 0.5, 0.75, 0.0, -0.5, -0.75, 0.25, -1.0, -0.25, 0.75, -0.75, -0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -1.0, -0.25, -0.75, -1.0, 0.25, 0.0, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device20.destroy();
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device00.destroy();
    
    
    
    device10.destroy();
    const array4 = new Float32Array([-0.25, 0.5, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 0.25, 0.75, 0.0, 0.5, -1.0, -0.25, -1.0, -0.5, 0.0, 0.0, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, -0.75, -1.0, -0.25, 0.75, -0.25, 0.0, -1.0, 1.0, 0.75, 0.25, 0.75, 0.25, -0.5, 0.75, -1.0, 0.5, 0.25, -0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 0.25, 1.0, 0.5, 1.0, 0.5, 1.0, 1.0, -0.25, -0.75, -0.75, 0.75, 0.5, 0.5, 0.5, 0.5, -0.25, -0.5, 0.75, -0.5, 0.5, 0.5, -0.75, 0.0, -1.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.25, 0.75, -0.5, 1.0, 1.0, 0.0, 0.0, -0.5, 0.75, -0.5, -0.75, -1.0, 0.0, 0.75, ]);
    
    
    const array5 = new Float32Array([0.5, 0.75, -0.5, 0.75, 0.25, -0.25, 0.75, 0.25, 0.5, 0.25, -0.25, -0.5, -1.0, -0.5, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, -0.75, -0.25, -1.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 1.0, 0.75, 0.25, -0.5, -0.75, -1.0, -1.0, -0.5, 0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.0, -0.5, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.0, -0.25, 0.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.5, -0.75, 1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device60.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const array6 = new Float32Array([0.0, 0.0, -0.5, 1.0, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -1.0, 1.0, -0.5, 0.75, 0.0, -0.5, 0.0, 1.0, -0.5, 0.0, 0.75, 0.5, -1.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, 0.25, 0.5, 0.75, 0.0, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.0, -0.5, 0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.75, 1.0, 0.5, -0.5, -1.0, -0.5, -0.5, 0.5, -0.75, -0.25, 0.0, 1.0, -0.5, -0.75, -0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 0.25, -0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.25, -0.5, 0.5, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.5, ]);
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array7 = new Float32Array([-0.5, -0.75, 0.75, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.75, -1.0, -0.25, 0.25, 0.0, -0.25, 0.5, -0.75, 0.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 0.75, -0.5, 0.0, -0.5, -0.25, 0.75, 0.5, 0.5, 0.0, 0.0, -0.25, 1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -0.25, -0.5, 0.25, 1.0, -0.5, 0.0, -0.25, -0.5, 0.0, -0.75, -1.0, -0.5, -1.0, -0.75, -0.25, -1.0, -1.0, 0.75, 0.75, 0.5, 0.25, 0.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.0, -1.0, ]);
    const array8 = new Float32Array([0.0, 0.5, 0.75, -0.5, 0.5, 0.25, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, -0.5, -0.75, 0.0, 0.25, -0.5, 0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.5, 1.0, 0.75, 1.0, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, 0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 1.0, 0.5, -0.25, -0.25, -0.75, -0.5, -0.5, 0.5, -0.5, 0.5, -0.25, 0.75, 0.0, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, -1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.25, -0.75, -0.5, -1.0, 0.25, -0.5, -0.25, -0.5, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, -0.5, -0.25, 0.75, 0.5, -0.5, -0.25, -0.5, 1.0, ]);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.25, 0.5, -0.5, -0.25, 0.5, -0.75, 0.5, -0.25, 0.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 1.0, -0.75, 0.25, 0.0, -0.5, 1.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.0, -0.25, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, -0.5, 0.5, -0.25, -0.75, 0.5, -0.5, -0.25, -0.75, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.75, 0.0, 1.0, -1.0, -0.5, -0.5, -0.5, 0.75, 0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.5, 0.25, 0.25, 0.0, 0.5, -0.75, 0.25, 0.75, -1.0, -0.5, 0.5, -0.5, 0.5, 1.0, 0.0, -0.5, 1.0, ]);
    
    device80.destroy();
    render_bundle_encoder700.popDebugGroup();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const array10 = new Float32Array([0.0, -0.25, 0.25, -1.0, 0.0, 0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, -0.75, -0.75, -0.5, -0.5, 0.0, 1.0, 0.25, 1.0, 1.0, -1.0, 0.0, 0.5, -0.25, -1.0, -1.0, -0.25, 0.5, -0.5, 0.25, -1.0, 1.0, 0.25, -0.25, -0.25, -0.75, -0.75, -0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 0.0, -0.25, 1.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.0, 0.5, 0.0, -0.75, 0.75, -0.25, 1.0, -0.5, 0.5, -0.5, 0.0, 0.25, -1.0, -0.75, 0.0, -0.25, 0.75, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -0.5, -0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.0, ]);
    device50.destroy();
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array11 = new Float32Array([0.0, 0.75, -1.0, -0.5, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.5, -0.25, 0.75, 1.0, 0.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.75, 1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.75, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, -1.0, -0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 0.25, -0.5, 0.25, -0.25, -0.75, -0.25, -1.0, 0.25, 0.0, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 1.0, 1.0, ]);
    
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    texture701.destroy();
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    render_bundle_encoder701.insertDebugMarker("marker");
    device70.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    
    
    
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array12 = new Float32Array([0.75, -0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -0.5, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, -0.25, 0.25, -1.0, 1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 0.25, 0.5, 0.75, -0.25, -0.75, -0.5, 1.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, -0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 0.75, 0.25, -1.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.25, 0.25, 0.5, 0.25, 0.25, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, 1.0, -0.25, -0.75, -1.0, 0.5, -0.75, 1.0, 0.0, 0.0, -0.25, -0.5, 0.0, 0.5, 1.0, ]);
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device100.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    texture300.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    
    
    
    
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder901.popDebugGroup();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device30.destroy();
    
    
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array13 = new Float32Array([0.75, 1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.75, 0.25, -0.25, -0.25, 0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, -1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, 0.0, 0.0, 1.0, 0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.75, -0.75, 0.75, -0.5, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, 0.5, -0.5, 1.0, 1.0, 1.0, -1.0, 0.0, -0.25, -0.75, -1.0, ]);
    texture1200.destroy();
    render_bundle_encoder901.pushDebugGroup("group_marker");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    
    const array14 = new Float32Array([0.75, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.75, -1.0, -1.0, -0.5, 0.75, 0.25, 0.5, -1.0, 0.5, 0.0, 0.25, 1.0, 0.25, -0.75, -0.25, 0.75, 0.25, 0.5, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, 0.0, 0.75, 0.25, -1.0, -0.25, -0.75, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.75, 0.75, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, 0.0, -0.25, -1.0, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.75, 0.0, -1.0, -0.75, 0.75, -1.0, -0.5, 0.25, 0.0, ]);
    
    device120.destroy();
    
    const array15 = new Float32Array([0.75, -0.75, -1.0, 0.25, -0.5, 0.25, 0.75, 1.0, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.0, 0.5, -0.25, 0.25, 0.25, -0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.25, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 0.75, 0.0, 1.0, 1.0, 0.25, 0.0, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.5, -0.75, 0.75, 0.25, -0.5, 1.0, 1.0, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.0, -0.25, -1.0, 0.0, 0.0, -0.5, 0.5, 0.5, 0.0, 0.25, -1.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.25, -1.0, -0.25, 0.75, 0.25, 0.75, -0.75, 1.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.25, 0.0, -0.75, -1.0, 1.0, 0.25, 1.0, -1.0, 0.75, 0.0, -0.5, -0.75, -0.25, ]);
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array16 = new Float32Array([0.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.5, -1.0, -0.5, 0.75, 1.0, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, 0.75, 0.0, -1.0, -1.0, 0.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.75, -1.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.75, 0.5, -0.5, 0.75, -0.75, -0.5, 1.0, 0.5, 0.25, 1.0, 1.0, -0.5, -0.75, 1.0, -0.25, 0.0, 1.0, 1.0, -1.0, 0.75, -0.25, 0.0, -0.5, 0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.5, 0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, ]);
    
    
    
    
    
    
    const array17 = new Float32Array([-0.25, 1.0, 0.75, 0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -0.5, 0.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.0, 0.0, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.5, 0.0, -0.25, -0.75, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, 0.5, 0.0, 0.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.75, -0.75, -0.5, 0.25, 0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 0.75, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 1.0, 0.25, -1.0, -1.0, -1.0, 0.0, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, 0.5, -1.0, 0.0, -0.75, 1.0, 0.25, -0.5, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.0, 0.75, -1.0, -0.25, 0.5, -0.75, 0.0, -1.0, -1.0, -0.75, ]);
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    
    const texture_view13001 = texture1300.createView({ label: "texture_view13001" });
    texture1300.destroy();
    
    
    const array18 = new Float32Array([-0.25, -0.25, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -0.75, -1.0, -1.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.0, 0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -0.5, 0.25, 1.0, -1.0, -0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, -0.25, 0.5, 0.5, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.25, -0.75, 0.0, -0.25, 0.0, 1.0, -1.0, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, -0.5, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -1.0, -0.25, -1.0, 0.5, -0.75, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, 1.0, 0.5, 0.25, -0.5, -1.0, -0.25, 0.5, -0.5, 0.5, ]);
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_bundle_encoder1300.insertDebugMarker("marker");
    render_bundle_encoder1301.insertDebugMarker("marker");
    const texture_view13010 = texture1301.createView({ label: "texture_view13010" });
    
    
    device130.destroy();
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device110.destroy();
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const array19 = new Float32Array([0.5, 1.0, 1.0, -1.0, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 1.0, 1.0, 0.0, 0.25, -0.5, 1.0, -0.5, -0.75, -0.5, 0.0, -1.0, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, -0.5, 0.5, 0.75, -0.75, -0.75, -1.0, -0.75, -1.0, 1.0, -0.75, -0.5, 0.25, -1.0, -1.0, -0.25, 0.5, 0.5, -0.25, -1.0, 0.75, 0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, 0.5, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.75, 0.5, -0.75, 0.5, -0.25, -0.5, -0.5, ]);
    
    
    
    
    
    device170.destroy();
    
    const array20 = new Float32Array([0.0, -0.5, -0.25, -0.25, -0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 1.0, -0.5, -0.25, -1.0, -1.0, 0.75, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, -0.5, 0.0, -1.0, 0.75, -1.0, 0.0, 0.75, -0.5, -0.75, 0.25, -0.5, 1.0, 0.5, -0.25, 0.75, 1.0, 0.75, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, 1.0, -0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.25, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, -0.5, -1.0, 0.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.75, -1.0, 1.0, 0.75, ]);
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const array21 = new Float32Array([-0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, -0.5, -0.75, 0.25, -0.25, 0.5, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.5, -0.25, -0.25, 0.25, 1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.75, -0.5, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.0, -1.0, 1.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.0, 1.0, 0.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.0, 0.0, -0.5, ]);
    const array22 = new Float32Array([-0.75, 1.0, -0.25, 1.0, 0.5, -0.75, -1.0, -0.75, -1.0, 0.0, -1.0, 1.0, 0.75, -1.0, 0.5, 1.0, -0.25, -1.0, -1.0, 0.75, -0.5, 0.5, -0.5, 1.0, 0.75, -0.75, 1.0, 1.0, 0.5, 1.0, 0.5, 0.75, 1.0, 1.0, 0.5, 0.0, 0.25, -0.75, 0.75, 0.25, 0.75, -0.75, -0.5, -1.0, -0.75, -1.0, -0.25, 0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, 0.0, -1.0, 0.25, -1.0, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.75, 0.25, -0.25, 0.75, 1.0, 1.0, -0.5, -0.75, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, 0.5, -1.0, 0.0, 0.5, ]);
    const array23 = new Float32Array([-0.75, -0.25, -0.5, 0.25, -1.0, -0.75, -0.25, -1.0, -1.0, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.5, 0.25, 0.0, -1.0, -0.75, -0.75, 0.75, 0.75, 1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 0.75, 0.5, 1.0, 0.5, -0.5, 1.0, 0.0, -0.25, 0.5, 0.75, 1.0, -0.5, 0.5, 0.25, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -1.0, 0.0, 0.5, -1.0, -0.5, -0.5, -1.0, 0.0, -0.75, -0.25, -0.5, 0.25, 0.0, 0.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, 0.0, -1.0, -1.0, -0.5, -0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 0.0, -0.25, 1.0, 0.25, -0.25, ]);
    
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    const array24 = new Float32Array([0.25, -1.0, -0.5, 0.75, 0.25, 0.0, -0.5, -0.25, -0.5, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -0.75, -0.25, 0.25, -1.0, -1.0, 0.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.25, 0.25, -0.75, -0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, -0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.25, 0.0, -0.25, -0.5, -0.5, 0.75, 0.0, -0.5, 0.0, 0.25, -0.5, 0.5, -0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, 0.5, -0.5, 0.75, 1.0, -0.5, 0.75, -0.5, -0.5, ]);
    
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    
    
    
    
    
    
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const texture1900 = device190.createTexture({
        label: "texture1900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    var shader_module2000_code = "";
    try {
        shader_module2000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2000 = await device200.createShaderModule({ label: "shader_module2000", code: shader_module2000_code })
    
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    
    
    const texture_view19000 = texture1900.createView({ label: "texture_view19000" });
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device150.queue.writeTexture({ texture: texture1501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    device160.destroy();
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    device150.queue.writeTexture({ texture: texture1501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device140.destroy();
    device150.queue.writeTexture({ texture: texture1501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1500.insertDebugMarker("marker");
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    device150.queue.writeTexture({ texture: texture1501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder2200 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture2201 = device220.createTexture({
        label: "texture2201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    var shader_module2200_code = "";
    try {
        shader_module2200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2200 = await device220.createShaderModule({ label: "shader_module2200", code: shader_module2200_code })
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    texture2200.destroy();
    render_bundle_encoder1501.insertDebugMarker("marker");
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    device150.queue.writeTexture({ texture: texture1501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device190.destroy();
    
    
    device150.queue.writeTexture({ texture: texture1501 }, array22, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture2000 = device200.createTexture({
        label: "texture2000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1501 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder2201 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    device180.destroy();
    device150.queue.writeTexture({ texture: texture1501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1500.destroy();
    
    
    render_bundle_encoder1502.insertDebugMarker("marker");
    
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    device150.queue.writeTexture({ texture: texture1501 }, array23, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array25 = new Float32Array([0.0, -0.75, 0.25, 0.25, 0.75, -0.5, -0.5, -0.75, -0.75, -0.75, 1.0, -1.0, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, -0.25, -0.5, -0.75, 0.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, 1.0, 0.75, 0.5, -1.0, 1.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 1.0, -1.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.75, 0.75, 1.0, 0.0, -1.0, -1.0, -0.5, 1.0, 1.0, -1.0, -1.0, -0.25, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, -0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.75, 0.5, 0.0, 0.25, 1.0, ]);
    
    device150.queue.writeTexture({ texture: texture1501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder2202 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2202",
        colorFormats: ["bgra8unorm"]
    });
    device150.queue.writeTexture({ texture: texture1501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.queue.writeTexture({ texture: texture1501 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1501.insertDebugMarker("marker");
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1501.popDebugGroup();
    texture1501.destroy();
    
    
    var shader_module2101_code = "";
    try {
        shader_module2101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2101 = await device210.createShaderModule({ label: "shader_module2101", code: shader_module2101_code })
    const texture2202 = device220.createTexture({
        label: "texture2202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device150.destroy();
    texture2000.destroy();
    
    
    var shader_module2201_code = "";
    try {
        shader_module2201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2201 = await device220.createShaderModule({ label: "shader_module2201", code: shader_module2201_code })
    
    
    const texture2203 = device220.createTexture({
        label: "texture2203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder2201.insertDebugMarker("marker");
    
    render_bundle_encoder2202.pushDebugGroup("group_marker");
    render_bundle_encoder2201.insertDebugMarker("marker");
    device200.destroy();
    render_bundle_encoder2200.insertDebugMarker("marker");
    
    render_bundle_encoder2200.pushDebugGroup("group_marker");
    var shader_module2102_code = "";
    try {
        shader_module2102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2102 = await device210.createShaderModule({ label: "shader_module2102", code: shader_module2102_code })
    
    texture2203.destroy();
    
    
    
    render_bundle_encoder2200.insertDebugMarker("marker");
    
    
    
    
    
    
    render_bundle_encoder2200.popDebugGroup();
    const texture2100 = device210.createTexture({
        label: "texture2100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture2204 = device220.createTexture({
        label: "texture2204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    var shader_module2202_code = "";
    try {
        shader_module2202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2202 = await device220.createShaderModule({ label: "shader_module2202", code: shader_module2202_code })
    const texture2101 = device210.createTexture({
        label: "texture2101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device210.queue.writeTexture({ texture: texture2101 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder2200.pushDebugGroup("group_marker");
    
    const texture_view21000 = texture2100.createView({ label: "texture_view21000" });
    const texture_view21001 = texture2100.createView({ label: "texture_view21001" });
    device210.queue.writeTexture({ texture: texture2101 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device210.queue.writeTexture({ texture: texture2101 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
}