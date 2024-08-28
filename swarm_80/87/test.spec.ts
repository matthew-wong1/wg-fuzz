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
    const array0 = new Float32Array([0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 1.0, -1.0, 1.0, 0.5, -0.5, 0.5, -0.25, 0.25, 0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.25, -0.75, 0.75, -0.5, 0.75, -0.75, -0.5, 0.25, 0.75, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -1.0, 0.25, -1.0, 0.75, 0.75, 0.25, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, -0.5, -1.0, -0.5, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 0.5, 1.0, -1.0, -0.25, 0.5, ]);
    
    const array1 = new Float32Array([1.0, 1.0, -0.5, 0.0, 0.5, 0.25, 0.0, 1.0, 0.0, 0.75, -0.25, -0.5, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.5, -1.0, -0.75, -0.75, -1.0, -1.0, 1.0, -1.0, 0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.0, 0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, 0.75, -0.5, 0.5, 0.5, -0.25, -0.75, -1.0, -0.25, 1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, -0.5, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, -0.5, -0.5, -0.25, 0.0, 1.0, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, 0.25, -0.25, 0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.25, -0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([0.75, -0.5, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.5, 1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -0.5, -0.25, 0.75, 0.25, 0.0, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, 0.25, -0.5, -0.25, 0.75, 0.5, -0.25, 0.75, -0.5, -0.25, 0.25, 0.75, -1.0, -0.5, 0.75, -0.5, -0.25, -0.25, -0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 1.0, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 1.0, 0.75, -1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, -0.5, -0.75, 0.0, 0.75, 1.0, -0.75, -0.25, 0.75, -0.75, 0.0, -0.25, -1.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.0, ]);
    
    const array3 = new Float32Array([0.75, 0.75, -0.5, 0.75, 0.25, 0.0, 0.5, -0.75, 0.75, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -1.0, 0.5, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, 0.75, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 1.0, 1.0, -0.75, -0.25, -1.0, -0.5, 1.0, 0.25, -0.25, 0.0, 1.0, -0.25, -1.0, -0.75, -0.5, 0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, -0.75, -0.5, 0.25, 0.0, 0.25, -1.0, -0.5, 0.5, 1.0, 0.25, 0.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture002.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    texture001.destroy();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query100.destroy()
    
    const array4 = new Float32Array([0.25, -0.5, 0.0, -1.0, -1.0, 0.75, -0.75, -0.25, -1.0, 1.0, 1.0, -0.5, -0.25, 0.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, -1.0, -0.75, 0.75, 0.75, -0.5, -0.5, -1.0, 0.75, -0.5, 0.0, -1.0, 0.0, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, -0.25, -0.25, 0.25, 0.25, 0.75, -0.5, -1.0, -0.25, -1.0, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.5, 0.5, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 1.0, 0.0, 0.0, -0.75, 0.0, -0.25, 1.0, 0.25, 1.0, ]);
    texture100.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture003.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.5, 0.25, -0.5, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, 0.5, 1.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, -0.25, -1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.25, -1.0, 0.5, 0.5, -1.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.0, 0.75, 0.5, -0.75, 0.25, -1.0, 1.0, 0.0, 0.5, 1.0, -0.75, 0.75, 0.5, 0.25, 0.25, -0.25, 1.0, -0.75, 0.0, 0.25, 0.25, 0.5, 0.0, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 0.0, 0.0, -0.5, -1.0, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    query004.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    query002.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture200.destroy();
    query100.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query100.destroy()
    
    command_encoder200.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query002.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    
    query002.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    buffer000.destroy()
    texture201.destroy();
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    query100.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    query101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    query002.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    
    query001.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query004.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    query101.destroy()
    
    query201.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder000.popDebugGroup()
    query002.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    texture202.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.popDebugGroup();
    query102.destroy()
    query001.destroy()
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    command_encoder203.insertDebugMarker("mymarker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query007.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([1.0, 0.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -0.5, -0.75, -0.25, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.75, 0.75, 0.75, 0.0, -1.0, -1.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.75, 1.0, 1.0, 0.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 0.0, -0.5, 0.0, -0.75, -1.0, -0.75, 0.0, -0.5, 0.0, 1.0, 0.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.75, 0.75, 0.0, ]);
    render_bundle_encoder201.popDebugGroup();
    query201.destroy()
    query100.destroy()
    query201.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    texture203.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    command_encoder204.insertDebugMarker("mymarker");
    
    command_encoder204.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.popDebugGroup()
    query005.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder202.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    query000.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    query001.destroy()
    render_bundle_encoder002.popDebugGroup();
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.popDebugGroup()
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    query003.destroy()
    render_bundle_encoder201.popDebugGroup();
    query200.destroy()
    
    query005.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query201.destroy()
    buffer200.destroy()
    query201.destroy()
    command_encoder100.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query006.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder200.popDebugGroup()
    
    const array7 = new Float32Array([-0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, 0.75, -0.75, 0.25, 1.0, -0.25, 0.0, -0.75, 0.75, -0.75, -0.75, 0.25, 0.25, -1.0, 0.75, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, -1.0, 0.75, -0.25, 1.0, -0.5, -0.75, -0.25, -0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 0.0, 0.0, 0.75, 0.75, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, 1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -0.25, -0.25, 1.0, -0.25, 0.5, 1.0, 1.0, 0.0, -0.5, 0.5, 0.25, 0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 0.0, 0.75, 0.25, -0.75, -0.5, -1.0, -0.25, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder102.popDebugGroup()
    const array8 = new Float32Array([-0.5, 1.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.0, 0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.0, -0.25, -1.0, -1.0, 1.0, -0.5, 0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.25, 0.0, -0.5, -0.25, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 1.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, 0.75, 0.25, 0.75, -0.75, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, -0.25, -0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 0.75, 0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query103.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const array9 = new Float32Array([1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.25, 0.25, -1.0, -0.5, 0.0, -1.0, -0.25, -1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.5, 0.5, -0.75, 0.75, -0.25, 1.0, -1.0, 1.0, 0.0, -0.25, 0.25, 0.0, 0.75, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, -0.75, 0.75, 0.25, 0.0, -0.75, 0.25, -0.25, -0.75, -0.25, 0.75, -1.0, 0.5, 0.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.0, 0.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, -1.0, 1.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 1.0, -0.5, 0.5, ]);
    buffer003.destroy()
    query007.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query002.destroy()
    
    command_encoder201.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    query202.destroy()
    query005.destroy()
    render_bundle_encoder200.popDebugGroup();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    query002.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    command_encoder204.popDebugGroup()
    texture102.destroy();
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    query003.destroy()
    
    command_encoder102.popDebugGroup()
    command_encoder201.pushDebugGroup("mygroupmarker")
    query202.destroy()
    query004.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder103.insertDebugMarker("mymarker");
    buffer002.destroy()
    query008.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    command_encoder202.insertDebugMarker("mymarker");
    query005.destroy()
    
    command_encoder205.insertDebugMarker("mymarker");
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    query203.destroy()
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    texture101.destroy();
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder202.popDebugGroup()
    
    command_encoder000.popDebugGroup()
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    query202.destroy()
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.5, -0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, -0.25, 1.0, 0.25, -1.0, 1.0, 0.75, -1.0, 0.5, -0.25, 0.5, -0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, 0.5, 1.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.0, -1.0, -0.5, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, -0.5, -1.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.5, 0.25, ]);
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    query0010.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    buffer100.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    query0011.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder102.popDebugGroup();
    
    query201.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_bundle_encoder002.popDebugGroup();
    buffer004.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder204.popDebugGroup()
    command_encoder000.popDebugGroup()
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.popDebugGroup()
    query0010.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query005.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder206.insertDebugMarker("mymarker");
    query009.destroy()
    command_encoder000.resolveQuerySet(
        query008,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder204.insertDebugMarker("mymarker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    query004.destroy()
    query0011.destroy()
    buffer005.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query006.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    command_encoder101.insertDebugMarker("mymarker");
    query001.destroy()
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder102.insertDebugMarker("mymarker");
    query006.destroy()
    query202.destroy()
    query100.destroy()
    query103.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture103.destroy();
    command_encoder000.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    
    query006.destroy()
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    command_encoder001.resolveQuerySet(
        query008,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    texture204.destroy();
    command_encoder203.popDebugGroup()
    command_encoder000.resolveQuerySet(
        query0010,
        0,
        32,
        buffer005,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder200.popDebugGroup()
    command_encoder000.resolveQuerySet(
        query0011,
        0,
        32,
        buffer007,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.clearBuffer(buffer006);
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    query102.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder104.popDebugGroup()
    command_encoder001.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    query000.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder000.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    query103.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query0011,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.resolveQuerySet(
        query009,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder206.insertDebugMarker("mymarker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder002.popDebugGroup();
    
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    command_encoder101.clearBuffer(buffer101);
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.resolveQuerySet(
        query008,
        0,
        32,
        buffer007,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder102.insertDebugMarker("mymarker");
    
    device30.pushErrorScope("internal");
    buffer006.destroy()
    command_encoder000.resolveQuerySet(
        query0011,
        0,
        32,
        buffer005,
        0
    )
    query009.destroy()
    command_encoder000.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    query204.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query0011,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.resolveQuerySet(
        query0010,
        0,
        32,
        buffer007,
        0
    )
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder100.clearBuffer(buffer101);
    command_encoder001.resolveQuerySet(
        query009,
        0,
        32,
        buffer005,
        0
    )
    command_encoder200.popDebugGroup()
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    query009.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder002.resolveQuerySet(
        query008,
        0,
        32,
        buffer007,
        0
    )
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    command_encoder204.popDebugGroup()
    command_encoder002.resolveQuerySet(
        query009,
        0,
        32,
        buffer007,
        0
    )
    command_encoder103.popDebugGroup()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder000.resolveQuerySet(
        query009,
        0,
        32,
        buffer005,
        0
    )
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder101.popDebugGroup()
    command_encoder104.popDebugGroup()
    command_encoder102.popDebugGroup()
    command_encoder000.popDebugGroup()
    command_encoder204.popDebugGroup()
    command_encoder201.popDebugGroup()
}