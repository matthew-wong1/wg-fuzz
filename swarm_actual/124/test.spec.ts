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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array0 = new Float32Array([1.0, -0.75, 0.25, 1.0, 1.0, -0.75, 1.0, -0.5, 0.75, 0.5, -0.75, 0.5, 0.0, 1.0, 0.75, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, -0.25, -1.0, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.5, -0.75, -0.5, -1.0, 1.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.5, 0.0, 0.75, -0.75, 0.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, 0.0, -0.75, -1.0, 0.75, -0.75, -0.75, 0.0, -0.5, -1.0, 0.0, 0.25, 1.0, -1.0, 0.5, 0.0, 0.0, 0.5, 0.5, 0.5, 0.0, -0.5, -0.75, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, -0.75, -0.25, 1.0, 0.5, -0.75, -1.0, 1.0, 0.5, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 1.0, -1.0, 0.25, 0.75, -0.25, 0.0, 0.75, 1.0, -0.25, -0.25, 0.25, 0.75, 0.25, 0.75, 1.0, 1.0, -0.25, 0.5, 1.0, 0.25, 1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.5, -1.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.5, 0.75, 0.0, 0.75, 0.5, -0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.25, 0.25, 0.25, -0.5, 0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, -0.75, 0.5, -0.5, -0.75, 0.75, -1.0, 0.25, 0.5, 0.75, -0.5, -0.5, -0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.75, 0.0, ]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    texture001.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture200.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture201.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture002.destroy();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device40.pushErrorScope("internal");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder600.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.pushErrorScope("out-of-memory");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device60.destroy();
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    device30.pushErrorScope("out-of-memory");
    device70.destroy();
    
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture203.destroy();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const array2 = new Float32Array([-0.5, 0.0, 0.0, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, -0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.0, 0.0, 0.0, 0.75, 0.0, -0.5, -0.25, -1.0, -0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, 0.0, -1.0, -0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.25, -0.25, -1.0, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, 0.5, 1.0, -0.5, 1.0, -0.25, -0.25, 0.0, 0.25, -0.75, 0.5, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, 1.0, -0.5, 0.75, -1.0, -1.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.75, 0.25, 0.0, 1.0, -1.0, -0.25, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 0.5, 0.75, 0.0, 0.25, ]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([1.0, 1.0, -1.0, -1.0, -1.0, 0.5, 1.0, 0.25, -0.5, 0.5, -1.0, -0.25, 0.25, -0.75, -0.5, 0.0, 0.5, 0.25, 0.0, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.0, -0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.25, 0.75, -1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.25, 0.0, 0.0, 0.0, 0.25, 1.0, 1.0, -0.25, 0.75, -0.25, 0.25, -1.0, 0.75, -1.0, -1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 1.0, -0.5, -1.0, 0.25, 0.0, -0.25, -0.5, -1.0, 1.0, -1.0, 1.0, -0.25, 0.5, -0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.25, 1.0, -0.5, ]);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    texture202.destroy();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([1.0, 0.75, -0.75, -1.0, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, -0.5, 0.75, -0.75, 0.25, 1.0, -1.0, 1.0, 0.5, -0.25, 0.5, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, -0.5, 0.25, 1.0, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, -1.0, -0.25, 0.0, -0.75, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -0.25, 1.0, 0.0, 0.0, -0.5, 0.0, 0.25, 0.0, -0.25, -0.5, -0.5, -0.75, -0.5, -0.5, 0.0, 0.25, -0.25, 0.5, -0.25, 0.5, 0.25, -0.75, -0.75, 0.0, -0.75, -0.5, -0.25, -0.5, -0.25, 0.25, -0.5, 0.75, 1.0, -0.75, -0.5, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 0.5, 1.0, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder900.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.pushErrorScope("validation");
    texture004.destroy();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder901.pushDebugGroup("group_marker");
    texture401.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture400.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device100.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture900.destroy();
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    texture801.destroy();
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_bundle_encoder800.insertDebugMarker("marker");
    device50.pushErrorScope("out-of-memory");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder901.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    texture800.destroy();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_bundle_encoder902.pushDebugGroup("group_marker");
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device110.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    const array5 = new Float32Array([1.0, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.75, -1.0, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -0.25, 0.75, 0.75, 0.25, 1.0, 0.0, 0.5, -1.0, -0.5, -1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, -0.5, -0.75, -1.0, -0.25, 0.0, -0.25, -0.75, -0.75, -0.25, 0.5, -1.0, 0.0, 0.25, -0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -1.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.0, 0.5, 0.25, -1.0, -0.75, -0.5, 0.75, 0.5, 0.0, ]);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const array6 = new Float32Array([-0.25, 1.0, -1.0, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.75, 0.75, 0.75, 0.75, 1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.5, 0.75, 0.0, -0.25, -0.25, 0.75, -1.0, 1.0, 1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -0.75, 0.25, 0.25, 0.75, -0.25, 0.25, 0.25, 0.0, 1.0, -0.5, -0.75, 0.75, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 1.0, 0.0, -0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.5, -1.0, 0.5, 0.0, 0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 0.75, -0.75, 1.0, 0.5, -1.0, -0.25, 0.5, ]);
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder800.insertDebugMarker("marker");
    texture204.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    texture005.destroy();
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture803.destroy();
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture802.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture301.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    texture902.destroy();
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    texture205.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const array7 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 0.0, -0.75, 0.75, 1.0, -1.0, -0.5, 0.25, -0.25, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.25, 0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, -0.5, -1.0, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, -0.75, -0.5, 0.0, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -0.5, -0.75, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.25, 1.0, -0.25, 0.75, 0.25, -1.0, 0.25, -0.25, 1.0, 0.0, 0.75, -0.75, 0.75, -0.75, -0.5, ]);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    texture901.destroy();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const array8 = new Float32Array([0.25, 0.75, -0.75, 1.0, 1.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, 1.0, 0.0, 0.0, -0.5, -0.75, -0.75, 0.0, -0.75, -0.25, 1.0, 0.75, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 0.0, -1.0, 0.75, 0.0, -0.25, -1.0, -0.25, 0.25, -0.75, -1.0, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.0, 0.5, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, 0.25, 0.25, -0.25, -0.75, -0.75, -0.5, -0.75, 1.0, -0.75, 0.5, 0.25, 0.0, 1.0, 1.0, ]);
    const sampler408 = device40.createSampler( { label: "sampler408" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    texture502.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    texture501.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder806 = device80.createCommandEncoder({ label: "command_encoder806" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    
    texture206.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    texture804.destroy();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    texture903.destroy();
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const sampler0013 = device00.createSampler( { label: "sampler0013" } );
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    
    const sampler1402 = device140.createSampler( { label: "sampler1402" } );
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const sampler0014 = device00.createSampler( { label: "sampler0014" } );
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    texture207.destroy();
    texture500.destroy();
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    texture303.destroy();
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.pushErrorScope("internal");
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder1400 = device140.createCommandEncoder({ label: "command_encoder1400" });
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    
    texture402.destroy();
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder901.insertDebugMarker("marker");
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    
}