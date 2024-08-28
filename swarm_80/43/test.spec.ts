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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    buffer000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.destroy();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer002.destroy()
    buffer001.destroy()
    buffer003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query002.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    query002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query000.destroy()
    query000.destroy()
    query002.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    texture001.destroy();
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    device30.destroy();
    buffer004.destroy()
    
    query002.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device00.destroy();
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    
    texture500.destroy();
    device50.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.destroy();
    
    
    
    device70.destroy();
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device100.destroy();
    
    buffer800.destroy()
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    
    
    
    
    
    
    
    
    texture802.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query800.destroy()
    
    device80.destroy();
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device110.destroy();
    const texture_view13001 = texture1300.createView({ label: "texture_view13001" });
    device130.destroy();
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer900.destroy()
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder901.insertDebugMarker("marker");
    texture901.destroy();
    device160.destroy();
    
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder901.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    texture900.destroy();
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    
    
    
    
    buffer1400.destroy()
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device150.destroy();
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    
    
    
    query1700.destroy()
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    device170.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    render_bundle_encoder901.insertDebugMarker("marker");
    device120.destroy();
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer901.destroy()
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile(__dirname + '/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    texture1400.destroy();
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    {
        await buffer902.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer902.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer902.unmap();
        console.log(new Float32Array(data));
    }
    
    
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture1800.destroy();
    
    
    
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    buffer902.destroy()
    
    
    
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device90.destroy();
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device190.destroy();
    
    
    query1400.destroy()
    const render_bundle_encoder2000 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device200.destroy();
    const render_bundle_encoder1801 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1801.insertDebugMarker("marker");
    device140.destroy();
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    render_bundle_encoder1800.insertDebugMarker("marker");
    var shader_module1801_code = "";
    try {
        shader_module1801_code = await fs.readFile(__dirname + '/shader_module1801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1801 = await device180.createShaderModule({ label: "shader_module1801", code: shader_module1801_code })
    
    
    buffer1800.destroy()
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1800.insertDebugMarker("marker");
    const texture_view18010 = texture1801.createView({ label: "texture_view18010" });
    
    
    
    
    
    device180.destroy();
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    
    
    
    
    const query2101 = device210.createQuerySet({
        label: "query2101",
        type: "occlusion",
        count: 32,
    });
    
    const query2102 = device210.createQuerySet({
        label: "query2102",
        type: "occlusion",
        count: 32,
    });
    query2102.destroy()
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile(__dirname + '/shader_module2100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    
    const query2103 = device210.createQuerySet({
        label: "query2103",
        type: "occlusion",
        count: 32,
    });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer2200 = device220.createBuffer({
        label: "buffer2200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const buffer2201 = device220.createBuffer({
        label: "buffer2201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder2100.insertDebugMarker("marker");
    
    
    
    var shader_module2101_code = "";
    try {
        shader_module2101_code = await fs.readFile(__dirname + '/shader_module2101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2101 = await device210.createShaderModule({ label: "shader_module2101", code: shader_module2101_code })
    
    buffer2200.destroy()
    
    
    
    
    
    
    
    buffer2201.destroy()
    
    var shader_module2102_code = "";
    try {
        shader_module2102_code = await fs.readFile(__dirname + '/shader_module2102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2102 = await device210.createShaderModule({ label: "shader_module2102", code: shader_module2102_code })
    
    
    
    
    
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
}