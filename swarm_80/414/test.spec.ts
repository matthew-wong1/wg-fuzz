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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    query000.destroy()
    query000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer000.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    const command_buffer001 = command_encoder001.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array0 = new Float32Array([0.5, 0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -0.25, 0.25, -0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.5, 1.0, -1.0, -0.75, 0.0, 0.75, -0.25, -1.0, 1.0, 1.0, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, -0.25, 0.0, -0.5, 0.25, 0.75, 1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, -0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 1.0, 1.0, -1.0, 0.0, -0.75, -0.25, 0.0, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    device20.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query002.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query003.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.destroy();
    query004.destroy()
    
    query002.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device50.pushErrorScope("out-of-memory");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer500 = command_encoder500.finish();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    
    device40.pushErrorScope("internal");
    
    
    
    
    
    
    const array1 = new Float32Array([-0.25, -0.5, 0.5, -0.75, 0.5, 1.0, 0.25, 1.0, -0.5, 0.0, 0.75, 0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 0.5, -0.5, -0.25, -0.25, 0.5, -0.25, 0.5, -0.5, -0.5, 0.0, 0.25, -0.25, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, -1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 0.0, 0.25, -0.75, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, 0.75, -0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 1.0, 1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.25, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, -0.75, 0.75, 0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, -0.5, ]);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query004.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer004.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    query400.destroy()
    buffer001.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer006.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    query001.destroy()
    query004.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer005.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query500.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query400.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device40.pushErrorScope("validation");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query501.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query400.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.pushErrorScope("validation");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query400.destroy()
    
    query004.destroy()
    const array2 = new Float32Array([0.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.25, -0.5, -1.0, 0.0, 0.75, -0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 1.0, -0.25, 0.5, 0.5, 1.0, -1.0, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.25, 0.25, 1.0, -1.0, 1.0, 0.25, 0.0, 0.5, 0.25, 1.0, 0.5, -1.0, -0.5, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, 1.0, 0.5, -0.5, 1.0, -1.0, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, 0.5, 0.25, 0.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, -0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, 0.25, 0.0, 0.25, -0.75, ]);
    query500.destroy()
    
    
    
    
    
    
    query600.destroy()
    buffer003.destroy()
    
    
    
    device60.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query501.destroy()
    query004.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query000.destroy()
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    query004.destroy()
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    query500.destroy()
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    query501.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    render_bundle_encoder401.popDebugGroup();
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    
    
    
    
    
    
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    query004.destroy()
    
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    
    command_encoder503.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const array3 = new Float32Array([-1.0, -0.25, -0.75, -0.5, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 1.0, -0.75, 0.0, -1.0, 0.25, -0.5, 1.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.25, 0.25, 0.0, 0.75, -0.25, -0.25, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.75, 0.75, -0.75, -0.5, 0.25, -0.5, 0.0, 0.25, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 0.25, 0.5, 0.25, 0.75, -1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.75, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device70.pushErrorScope("validation");
    command_encoder502.insertDebugMarker("mymarker");
    
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder503.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder503.insertDebugMarker("mymarker");
    
    
    query401.destroy()
    const texture508 = device50.createTexture({
        label: "texture508",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_bundle_encoder501.popDebugGroup();
    
    query005.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder504.insertDebugMarker("mymarker");
    
    
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder504.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder504.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device40.pushErrorScope("internal");
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    query401.destroy()
    
    
    query003.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    buffer007.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.25, 0.5, 0.25, 0.75, -1.0, -1.0, -0.5, -0.25, 1.0, 1.0, 1.0, 0.75, 0.75, 0.25, 0.75, 0.0, 1.0, -1.0, 0.25, -0.25, -0.5, 0.25, 0.25, -1.0, -1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 0.75, 1.0, -0.5, 1.0, 0.75, 0.0, -0.75, 0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.5, -0.5, 0.75, -0.5, -0.25, 0.5, -0.5, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, 0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.5, -0.25, 0.5, 1.0, -0.25, 1.0, -0.5, 0.5, 0.75, -0.25, -1.0, 0.0, 0.0, -0.75, 0.0, 0.75, -0.5, 1.0, 0.0, 1.0, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query004.destroy()
    query500.destroy()
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    command_encoder400.clearBuffer(buffer400);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer005,
        0
    )
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    
    
    
    
    
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    query400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query001.destroy()
    
    buffer400.destroy()
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder503.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder502.insertDebugMarker("marker");
    query503.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder504.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder504.insertDebugMarker("mymarker");
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    buffer502.destroy()
    
    query002.destroy()
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    command_encoder505.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    query700.destroy()
    render_bundle_encoder501.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device90.pushErrorScope("validation");
    compute_pass_encoder5040.insertDebugMarker("marker")
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    query000.destroy()
    command_encoder503.copyBufferToTexture(
        {
            buffer: buffer500
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    query503.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder5050.insertDebugMarker("marker")
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer004 = command_encoder004.finish();
}