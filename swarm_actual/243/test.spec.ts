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
    const array0 = new Float32Array([1.0, 0.0, 1.0, 1.0, -1.0, -0.5, 0.25, 0.5, -1.0, -0.75, 0.75, 0.5, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.0, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, 1.0, -0.75, 0.75, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, -0.5, -0.5, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, -0.5, -0.75, 0.75, -1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -0.75, -0.5, 0.0, 0.25, 0.0, 1.0, 0.75, -0.5, -0.5, 0.5, -0.75, -1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, -0.25, 0.25, 0.25, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([0.25, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.75, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, -0.75, 0.25, -0.5, 1.0, 0.25, 0.75, 0.5, -0.75, 1.0, -1.0, -0.5, -0.5, 0.5, -1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.5, 1.0, 0.75, -0.25, 0.75, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.0, 0.25, 0.75, -0.75, 0.25, 0.0, -0.75, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, -0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, -0.5, 0.25, -0.5, -1.0, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    texture000.destroy();
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const array2 = new Float32Array([-0.25, -0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, -0.5, -0.5, -0.25, 1.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, 0.25, -0.75, -0.25, 0.0, -1.0, 0.75, 0.5, 0.25, 0.0, -0.5, -1.0, 0.75, -0.25, 0.75, -0.5, -0.5, -1.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.0, 0.5, -1.0, 0.75, 0.0, 1.0, 0.25, 0.75, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, -0.5, 0.5, 0.25, 1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.0, 0.25, -1.0, 0.0, 0.0, -0.25, -1.0, -0.5, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, -1.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.0, 0.25, -0.5, -1.0, -1.0, 1.0, 0.0, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.5, 0.0, -0.5, 1.0, -0.25, 0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.0, 0.75, 0.75, -0.75, -1.0, -0.75, -0.25, 0.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.25, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.75, -0.5, -1.0, 0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 0.75, 0.0, 0.75, -0.5, -1.0, -1.0, 0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 0.0, -0.5, 1.0, -0.25, -0.25, 0.0, 0.25, 1.0, -0.5, -0.75, 0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const array4 = new Float32Array([0.25, 0.25, -0.75, 0.75, -1.0, -0.25, -1.0, 0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.25, 0.5, 0.0, -0.5, 0.25, 0.75, -0.5, -0.75, -0.75, 1.0, -1.0, 0.25, -0.25, -1.0, -0.5, 0.0, 0.0, 0.25, 0.0, 0.75, -1.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.5, -0.75, 0.5, -0.25, -0.25, -1.0, -0.75, -0.75, 0.0, 0.25, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, -0.5, -0.75, 0.5, 1.0, -0.5, 0.75, 0.75, -0.5, -0.5, -0.25, 0.0, 0.5, 0.5, -0.75, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 1.0, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array5 = new Float32Array([-1.0, -0.5, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.75, -0.25, -1.0, 0.75, -0.5, 0.5, -0.5, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, -1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.0, -0.75, 0.75, 0.25, -0.5, -0.75, 0.75, 1.0, 0.0, 0.75, 0.0, 0.25, -0.5, 1.0, -1.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, 0.0, 0.25, 0.75, 0.0, 0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.25, 0.25, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, 0.75, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const array6 = new Float32Array([-0.5, 0.0, -0.5, -1.0, 0.25, 0.5, -0.5, 0.0, 0.5, 0.0, -0.25, 1.0, -1.0, -0.5, 0.75, 1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -0.75, -1.0, -0.25, -0.25, -0.75, -0.75, -1.0, 0.75, 0.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.5, -0.75, -0.75, 0.25, 0.25, 0.75, -0.25, -0.75, 0.25, -0.5, 0.5, -1.0, 0.0, 0.75, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, 0.5, 0.5, 0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 0.25, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -0.75, 0.25, 1.0, 1.0, -0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    texture001.destroy();
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    texture002.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    texture101.destroy();
    const texture_view1007 = texture100.createView({ label: "texture_view1007" });
    
    texture100.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    texture005.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array7 = new Float32Array([0.5, 0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.5, -1.0, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -0.5, -0.75, -1.0, 0.75, 0.5, 0.25, 0.0, -1.0, -0.5, 1.0, 0.5, 0.25, -0.5, -0.5, 0.5, 0.5, -0.75, -0.25, 0.5, 1.0, -0.75, 0.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.5, -0.75, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, 1.0, 0.0, -1.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.75, ]);
    const array8 = new Float32Array([-0.5, -0.25, 1.0, 1.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.75, 0.0, -0.75, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.25, 1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 1.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.5, 1.0, 0.25, 1.0, 0.0, 0.75, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, -0.25, 1.0, 1.0, 0.25, -0.25, 0.0, -0.25, -0.5, 0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.5, -0.5, 1.0, 0.5, 0.75, -0.75, ]);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture004.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    texture006.destroy();
    
    texture102.destroy();
    const array9 = new Float32Array([0.25, 0.0, -0.25, -0.25, 0.0, 1.0, 0.25, -0.5, 0.5, -1.0, 0.5, 0.75, 0.0, -0.75, 1.0, -0.5, 0.25, 0.0, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, -0.75, -0.75, 1.0, 0.25, -0.5, 0.25, 0.5, 0.75, 0.5, -0.25, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 0.0, 0.5, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, 0.25, -0.5, -0.25, 0.5, -0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 0.75, 0.25, -0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -0.75, 0.0, 0.5, 0.5, 1.0, 0.75, 0.75, -0.5, -0.25, 1.0, -0.25, -0.75, 0.25, -0.5, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 0.25, -0.5, 0.0, -0.75, 0.25, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    texture300.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture007.destroy();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture008.destroy();
    texture200.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const array10 = new Float32Array([-0.25, 1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.5, -1.0, -1.0, 0.25, -1.0, -0.5, 1.0, -1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, 1.0, 0.0, 1.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.75, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, 0.0, 0.25, -0.75, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 0.75, -0.75, 1.0, -1.0, 0.75, 0.5, -1.0, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, -0.75, -0.5, 0.5, 0.25, 0.5, 0.5, -0.25, 0.75, -0.75, -0.25, -0.5, -1.0, -0.75, 0.25, -1.0, 0.75, 0.0, 0.75, -1.0, 0.25, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, ]);
    device10.queue.writeTexture({ texture: texture108 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    
    
    
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture009 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([-0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 0.25, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, 0.0, 0.75, -0.25, -0.75, -1.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 1.0, -0.75, -0.75, 0.0, 0.75, -0.5, -0.25, -0.25, 0.25, -0.75, -1.0, -0.25, 0.0, 0.0, -0.75, -0.25, -1.0, 0.75, -0.75, -0.5, -0.25, 0.75, 0.25, -1.0, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.25, 0.5, -1.0, -0.25, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 1.0, -0.5, -0.25, 0.75, -1.0, 0.0, 1.0, 0.5, 1.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.5, ]);
    device00.queue.writeTexture({ texture: texture009 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture009.destroy();
    device10.queue.writeTexture({ texture: texture108 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture108 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture108 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    texture301.destroy();
    
    
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    texture0010.destroy();
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    device10.queue.writeTexture({ texture: texture108 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    texture104.destroy();
    texture106.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.queue.writeTexture({ texture: texture108 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeTexture({ texture: texture108 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture105.destroy();
    device10.queue.writeTexture({ texture: texture108 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture108 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    texture107.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    texture204.destroy();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture108 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    texture108.destroy();
    texture201.destroy();
    const texture_view1091 = texture109.createView({ label: "texture_view1091" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture202.destroy();
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture0012.destroy();
    texture400.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture_view1092 = texture109.createView({ label: "texture_view1092" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    texture0011.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    device40.queue.writeTexture({ texture: texture403 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture403 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const array12 = new Float32Array([0.5, 0.5, 0.5, 0.0, -0.5, -1.0, 0.5, 0.25, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, 0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 1.0, 0.25, -0.5, 0.75, 0.5, -0.5, 0.5, -0.5, 0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.0, -0.5, 0.75, 0.25, 0.75, 1.0, -1.0, -0.75, -0.75, 0.75, -0.5, 0.0, -0.25, 1.0, 0.75, 0.25, -0.5, 0.25, 0.75, 0.0, 0.75, -0.5, 0.5, 0.75, ]);
    device40.queue.writeTexture({ texture: texture403 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    
    
    device40.queue.writeTexture({ texture: texture403 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const texture_view1093 = texture109.createView({ label: "texture_view1093" });
    
    const array13 = new Float32Array([-0.75, -0.5, 0.75, 0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 1.0, -1.0, 0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.0, 1.0, 1.0, 0.25, -0.75, -1.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.75, 0.5, -0.75, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, -0.25, 0.75, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 0.0, 1.0, 0.75, 0.0, 1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, 0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.75, 1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, 0.75, -1.0, 0.5, -0.25, 1.0, 1.0, -0.5, ]);
    device40.queue.writeTexture({ texture: texture403 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view00130 = texture0013.createView({ label: "texture_view00130" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture403.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture0014 = device00.createTexture({
        label: "texture0014",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    const texture_view1094 = texture109.createView({ label: "texture_view1094" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    const texture_view00131 = texture0013.createView({ label: "texture_view00131" });
    const array14 = new Float32Array([0.75, 0.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.0, 0.25, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, 0.0, 1.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.5, 0.25, 0.25, 0.75, 0.25, 0.25, 0.5, -0.75, 0.5, -0.5, -0.5, -0.5, -0.75, -0.25, -1.0, -0.75, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.5, 0.5, -0.5, 0.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, 1.0, -0.5, -1.0, ]);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view00132 = texture0013.createView({ label: "texture_view00132" });
    texture600.destroy();
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const texture_view1095 = texture109.createView({ label: "texture_view1095" });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.queue.writeTexture({ texture: texture404 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture404 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture404 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture601.destroy();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture500.destroy();
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    texture404.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view00140 = texture0014.createView({ label: "texture_view00140" });
    
    
    const texture_view00133 = texture0013.createView({ label: "texture_view00133" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device50.queue.writeTexture({ texture: texture501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    render_bundle_encoder101.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture109.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture800.destroy();
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
}